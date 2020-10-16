open Atd_instrument.Instrument_t;;


(*============================================================*)
(* BASE TYPES *)
(*============================================================*)


module Types =
struct

  type interval = M1 | M5 | M15 | M30 | M60 | H1 | H4 | D1

  let interval_to_int = function 
    | M1 -> 1
    | M5 -> 5
    | M15 -> 15
    | M30 -> 30
    | M60 -> 60
    | H1 -> 60
    | H4 -> 240
    | D1 -> 1440

  type pair = Pair of string
  type price = Price of float
  type volume = Volume of float
  type count = Count of int
  type timestamp = Timestamp of int

  type ask = Ask of (price * volume)
  type bid = Bid of (price * volume)

  type error = Error of string list option
  
  let nested (ls: string list) (body: Yojson.Basic.t) =
    let open Yojson.Basic.Util in
    let rec iter (len: int) (json: Yojson.Basic.t) (depth: int) = 
      
      (* seems like function args are outside of scope for pattern matching *)
      (* so use if else instead *)
      if depth = len
      then match json with
        | `Null -> failwith ("Null json for nested : " ^ String.concat "/" ls)
        | _ -> json
      else let field = List.nth ls depth in iter len (member field json) (depth + 1) 
      
    in iter (List.length ls) body 0;;

end




(*============================================================*)
(* INSTRUMENT *)
(*============================================================*)


module Instrument = struct
  include Types;;
  include Lwt;;
  include Cohttp_lwt_unix;;
include Atd_instrument;;


  (* //TODO how do we specify variable string (pair) *)
  type response = {
    error: error;
    result: expected option
  }

  (* Query args *)
  type q_args = {
    symbol: pair
  }


  type parsed = {
      symbol: pair 

      ; l: price 
      ; h: price 
      ; vwap: price 
      ; last: price
      
      ; volume: volume
      ; trdCount: count
      
      ; bestAsk: price
      ; bestBid: price

      ; prevLow: price
      ; prevHigh: price
      ; prevVwap: price
      ; prevVolume: volume
      ; prevTrdCount: count
  };;

  type t = Instrument of parsed

  let parse symbol data = 
      let (askPrice, _, _) = data.ask in
      let (bidPrice, _, _) = data.bid in
      let (lastprice, _) = data.last in
      let (curVol, preVol) = data.vol in
      let (curVwap, preVwap) = data.vwap in
      let (curTrades, preTrades) = data.trades in
      let (curLow, preLow) = data.low in
      let (curHi, preHi) = data.high in { 
          symbol = Pair symbol
        ; l = Price curLow
        ; h = Price curHi
        ; vwap = Price curVwap
        ; last = Price lastprice
        ; volume = Volume curVol
        ; trdCount = Count curTrades
        ; bestAsk = Price askPrice
        ; bestBid = Price bidPrice
        ; prevLow = Price preLow
        ; prevHigh = Price preHi
        ; prevVwap = Price preVwap
        ; prevVolume = Volume preVol
        ; prevTrdCount = Count preTrades
      };;


  let make_req_uri (args: q_args) = 
    let Pair s = args.symbol in
    let endpoint = "https://api.kraken.com/0/public/Ticker" in
      Printf.sprintf "%s?pair=%s" endpoint s
      |> Uri.of_string

        
  let make_req_args ~symbol = {
    symbol = Pair symbol
  };;


  let print_parsed (parsed: parsed) : unit = 
    Printf.printf "Symbol: %s - " (let Pair x = parsed.symbol in x)
    ; Printf.printf "Low: %f - " (let Price x = parsed.l in x)
    ; Printf.printf "High: %f - " (let Price x = parsed.h in x)
    ; Printf.printf "Last: %f - " (let Price x = parsed.last in x)
    ; Printf.printf "Trade Count: %i - " (let Count x = parsed.trdCount in x)
    ; Printf.printf "Best Ask: %f - " (let Price x = parsed.bestAsk in x)
    ; Printf.printf "Best Bid: %f\n" (let Price x = parsed.bestBid in x);;
 
  (* let aio_print_parsed (parsed: parsed) = 
    let open Lwt_io in
    let Pair x = parsed.symbol in
    printf "Symbol: %s - " x
    ; printf "Low: %f - " (let Price x = parsed.l in x)
    ; printf "High: %f - " (let Price x = parsed.h in x)
    ; printf "Last: %f - " (let Price x = parsed.last in x)
    ; printf "Trade Count: %i - " (let Count x = parsed.trdCount in x)
    ; printf "Best Ask: %f - " (let Price x = parsed.bestAsk in x)
    ; printf "Best Bid: %f\n" (let Price x = parsed.bestBid in x);; *)

  let fetch (args: q_args) = 
    let uri = make_req_uri args in
    Client.get uri >>= fun (_, body) ->
      let x = body |> Cohttp_lwt.Body.to_string in x
        >|= fun x ->
          Yojson.Basic.from_string x
          |> nested ["result"; let Pair x = args.symbol in x]
          |> Yojson.Basic.to_string
          |> Instrument_j.expected_of_string
          |> parse (let Pair x = args.symbol in x)

  (* //TODO CHECK IF ERROR IS EMPTY*)
  (* // TODO VALIDATE EXPECTED *) 

end




(*============================================================*)
(* OHLC *)
(*============================================================*)


module Ohlc = struct
include Types;;
include Lwt;;
include Cohttp_lwt_unix;;
include Atd_kraken.Public_j;;
include Atd_kraken.Public_t;;


type response = {
  error: error
  ; result: expected_ohlc option
}


type q_args = {
  symbol: pair
  ; interval: interval
}

type parsed_item = {
  symbol: pair
  ; utcTime: timestamp
  ; o: price
  ; h: price
  ; l: price
  ; c: price
  ; volume: volume
  ; trdCount: count 
}

type parsed = parsed_item list


(* PARSE A SINGLE ITEM // RECURSION ON LIST TO PARSE EVERY ITEM *)
let parse_item symbol data = 
  let (_time, _o, _h, _l, _c, _vwap, _vol, _cnt) = data in {
    symbol = Pair symbol 
    ; utcTime = Timestamp _time
    ; o = Price _o
    ; h = Price _h
    ; l = Price _l
    ; c = Price _c
    ; volume = Volume _vol
    ; trdCount = Count _cnt
  }


let parse symbol data = 
  let rec iter (acc_parse: parsed) (data: expected_ohlc) : parsed =
  match data with
  | [] -> acc_parse
  | hd :: t -> iter (acc_parse @ [parse_item symbol hd]) t
  in iter [] data

let make_req_uri (args: q_args) = 
  let Pair s = args.symbol in
  let t = interval_to_int args.interval in
  let endpoint = "https://api.kraken.com/0/public/OHLC" in
    Printf.sprintf "%s?pair=%s&interval=%i" endpoint s t
    |> Uri.of_string


let make_req_args ~symbol ~interval = {
  symbol = Pair symbol
  ; interval = interval

}


let print_parsed_item (parsed: parsed_item) : unit = 
  Printf.printf "Symbol: %s - " (let Pair x = parsed.symbol in x)
  ; Printf.printf "Time: %i - " (let Timestamp x = parsed.utcTime in x)
  ; Printf.printf "Open: %f - " (let Price x = parsed.o in x)
  ; Printf.printf "High: %f - " (let Price x = parsed.h in x)
  ; Printf.printf "Low: %f - " (let Price x = parsed.l in x)
  ; Printf.printf "Close: %f - \n" (let Price x = parsed.c in x)


let fetch (args: q_args) = 
  let uri = make_req_uri args in
  Client.get uri >>= fun (_, body) ->
    let x = body |> Cohttp_lwt.Body.to_string in x
    >|= fun x ->
      Yojson.Basic.from_string x
      |> nested ["result"; let Pair x = args.symbol in x]
      |> Yojson.Basic.to_string
      |> expected_ohlc_of_string
      |> parse (let Pair x = args.symbol in x)

;
end

