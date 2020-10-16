(* REST OF PROGRAM *)

print_endline "Hello, world!";;

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


let j_tolist ls body = 
  let open Yojson.Basic.Util in
  nested ls body |> to_list;;

let listn index list = List.nth list index;;


module Price = struct
  type t = Price of float
  let add a b = Price (a +. b)
end;;

type pair = Pair of string;;
type price = Price of float;;
type vol = Vol of float;;
type trades = Trades of int;;

type error = Errors of string list;;

type ask = Ask of (price * vol)
type bid = Bid of (price * vol)

type o = Open of price
type h = High of price
type l = Low of price
type c = Close of price




let asks_of_yojson  (symbol: string) (json: Yojson.Basic.t)= 
  let module Y = Yojson.Basic.Util in
  let x = nested ["result"; symbol; "a"] json in
  let y = x
  |> Y.to_list
  |> Y.filter_string
  in let (a, _, c) = (listn 0 y, listn 1 y, listn 2 y) in
  Ask (Price (float_of_string a), Vol (float_of_string c))

(* type edata_ticker = {
      asks: price * whole_vol * vol
    ; bids: price * whole_vol * vol
    ; close: price * vol
    ; vol: vol * vol
    ; vwap: price * price
    ; trades: trades * trades
    ; low: price * price
    ; high: price * price
    ; opening: price
} *)





      
  (* ; bids = nested ["result"; symbol; "b"] json
  ; close = nested ["result"; symbol; "c"] json
  ; vol = nested ["result"; symbol; "v"] json
  ; vwap = nested ["result"; symbol; "p"] json
  ; trades = nested ["result"; symbol; "t"] json
  ; low = nested ["result"; symbol; "l"] json
  ; high = nested ["result"; symbol; "h"] json
  ; opening = nested ["result"; symbol; "o"] json

  } *)


type pdata_ticker = {
    symbol: pair

    ; low: price
    ; high: price
    ; vwap: price
    ; last: price
    
    ; volume: vol
    ; trdCount: trades
    
    ; bestAsk: price
    ; bestBid: price

    ; prevLow: price
    ; prevHigh: price
    ; prevVwap: price
    ; prevVolume: vol
    ; prevTrdCount: trades
};;


open Lwt;;
open Cohttp_lwt_unix;;

let body =
  let uri = Uri.of_string "https://api.kraken.com/0/public/Ticker?pair=XXBTZUSD" in
  Client.get uri >>= fun (_, body) -> body 
    |> Cohttp_lwt.Body.to_string 
    >|= Yojson.Basic.from_string;;

let () =
  let body = Lwt_main.run body in
  let open Yojson.Basic.Util in
  let result = body
    (* |> nested ["result"; "XXBTZUSD"; "a"] *)
    (* |> member "result" 
    |> member "XXBTZUSD" 
    |> member "o"  *)
    (* |> Yojson.Basic.to_string *)
    |> asks_of_yojson "XXBTZUSD"
in
    let Ask (Price a, Vol b) = result in
    Printf.printf "Ask = %f --- %f\n" a b;;
  (* let (a, b, c) = result in
  Printf.printf "Ask = %f - %i - %f\n" a b c *)
  (* float_of_string result
    |> Printf.printf "Open is %f\n";; *)
let Price x = Price.add 10.0 232.1 in print_float x; print_endline "";;



(*============================================================*)
(* TEST ADT *)
(*============================================================*)


open Atd_instrument;;

open Instrument_t;;

let date = {year = 1970; month = 1; day = 1};;

let incr date = {date with month = date.month + 1};;
let print_date date = print_endline (Instrument_j.string_of_date @@ incr date);;
print_date date;;

let topask = Ask (Price 100.5, Vol 400.4);;
print_endline (Instrument_j.string_of_ask topask);;
let Ask (Price x, _ ) = topask in print_float x; print_endline "";;




let parse_instrument symbol data = 
    let (askPrice, _, _) = data.ask in
    let (bidPrice, _, _) = data.bid in
    let (lastprice, _) = data.last in
    let (curVol, preVol) = data.vol in
    let (curVwap, preVwap) = data.vwap in
    let (curTrades, preTrades) = data.trades in
    let (curLow, preLow) = data.low in
    let (curHi, preHi) = data.high in { 
        symbol = Pair symbol
      ; low = Price curLow
      ; high = Price curHi
      ; vwap = Price curVwap
      ; last = Price lastprice
      ; volume = Vol curVol
      ; trdCount = Trades curTrades
      ; bestAsk = Price askPrice
      ; bestBid = Price bidPrice
      ; prevLow = Price preLow
      ; prevHigh = Price preHi
      ; prevVwap = Price preVwap
      ; prevVolume = Vol preVol
      ; prevTrdCount = Trades preTrades
    }


(* open Main_v;; *)
let body =
  let uri = Uri.of_string "https://api.kraken.com/0/public/Ticker?pair=XXBTZUSD" in
  Client.get uri >>= fun (_, body) -> 
    let x = body |> Cohttp_lwt.Body.to_string in x
    (* >|= print_endline *)
    >|= Yojson.Basic.from_string
    >|= nested ["result"; "XXBTZUSD"]
    >|= Yojson.Basic.to_string
    >|= Instrument_j.expected_of_string
    >|= Instrument_v.validate_expected []
    >|= function
      | None -> print_endline "Success"
      | _ -> print_endline "Failure"
    
      (* >|= validate_expected
    >|= Bool.to_string *)
  

let print_json = 
  let uri = Uri.of_string "https://api.kraken.com/0/public/Ticker?pair=XXBTZUSD" in
  Client.get uri >>= fun (_, body) -> 
  let x = body |> Cohttp_lwt.Body.to_string in x
    >|= fun x ->

    Yojson.Basic.from_string x
    |> nested ["result"; "XXBTZUSD"]
    |> Yojson.Basic.to_string
    |> Instrument_j.expected_of_string
    |> Instrument_v.validate_expected []
    |> function
      | None -> Printf.printf "Valid response : %s\n" x
      | _ -> Printf.printf "Invalid response : %s\n" x

let print_ask = 
  let uri = Uri.of_string "https://api.kraken.com/0/public/Ticker?pair=XXBTZUSD" in
  Client.get uri >>= fun (_, body) -> 
  let x = body |> Cohttp_lwt.Body.to_string in x
    >|= fun x ->

    Yojson.Basic.from_string x
    |> nested ["result"; "XXBTZUSD"]
    |> Yojson.Basic.to_string
    |> Instrument_j.expected_of_string
    |> parse_instrument "XXTBZUSD"


let () =
  Lwt_main.run(print_json);;
  let expected = Lwt_main.run(print_ask) in let Price x = expected.bestAsk in print_float x; print_endline "";;
(* let validate_body body =
  match validate_expected body with
      | None -> failwith "Invalid"
      | _ -> print_endline "Success" *)