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
  fetch o_qargs >>= fun x -> Lwt_io.printf "time of first candle : %i\n"  (let item = List.nth x 1 in let Timestamp t = item.utcTime in t)


let get_orderbook =
  let open OrderBook in
  let b_args = OrderBook.make_req_args ~symbol:"XXBTZUSD" ~depth:100 in
  fetch b_args >>= fun x -> Lwt_io.printf "first ask price : %f\n" (let Ask (Price p, Volume _) = List.nth x.asks 1 in p)

let joins = Lwt.join([get_instrument; get_ohlc; get_orderbook]);;

let _ = Lwt_main.run joins