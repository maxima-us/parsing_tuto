(* open Lwt;; *)
open Endpoints.Public;;

let qargs = Instrument.make_req_args ~symbol:"XXBTZUSD" in
let body = Lwt_main.run(Instrument.fetch qargs) in
Instrument.print_parsed body;;


let qargs = Ohlc.make_req_args ~symbol:"XXBTZUSD" ~interval:M60 in
let body = Lwt_main.run(Ohlc.fetch qargs) in
Ohlc.print_parsed_item (List.nth body 1);;


let get_instrument =
  let open Instrument in 
  let i_qargs = make_req_args ~symbol:"XXBTZUSD" in
  (* let%lwt body = Instrument.fetch i_qargs in Instrument.print_parsed body;; *)
  fetch i_qargs >>= fun x -> Lwt_io.printf "price : %f\n" (let Price h = x.h in h)

let get_ohlc =
  let open Ohlc in
  let o_qargs = Ohlc.make_req_args ~symbol:"XXBTZUSD" ~interval:M60 in
  (* let%lwt body = Ohlc.fetch o_qargs in Ohlc.print_parsed_item (List.nth body 1);; *)
  fetch o_qargs >>= fun x -> Lwt_io.printf "time of first candle : %f\n"  (let item = List.nth x 1 in let Timestamp t = item.utcTime in t)


let get_orderbook =
  let open OrderBook in
  let b_args = OrderBook.make_req_args ~symbol:"XXBTZUSD" ~depth:100 in
  fetch b_args >>= fun x -> Lwt_io.printf "first ask price : %f\n" (let Ask (Price p, Volume _) = List.nth x.asks 1 in p)


let get_trades = 
  let open Trades in
  let t_args = Trades.make_req_args ~symbol:"XXBTZUSD" ~since:None in 
  fetch t_args >>= fun x -> Lwt_io.printf "first trade price / time : %f / %f \n" (let Price p = (List.nth x 0).avgPx in p) (let Timestamp t = (List.nth x 0).transactTime in t)


let get_symbols = 
  let open Symbols in
  let open Core in
  fetch >>= fun x -> Lwt_io.printf "Exchange name for XBT-USD : %s\n" (match String.Table.find x "XBT-USD" with | Some v -> v.exchange_name | None -> failwith "Key doesnt exist")
  (* fetch >>= fun x -> Lwt_io.printf "WS name for first elem : %s\n" (let s = match List.nth x 0 with Some v -> v.ws_name | None -> "No ws name" in s) *)


let joins = Lwt.join([get_instrument; get_ohlc; get_orderbook; get_trades; get_symbols]);;

let _ = Lwt_main.run joins