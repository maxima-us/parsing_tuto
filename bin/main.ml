open Lwt;;
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
fetch i_qargs >>= fun x -> Lwt_io.printf (let Price h = x.h in h)

let get_ohlc =
let o_qargs = Ohlc.make_req_args ~symbol:"XXBTZUSD" ~interval:M60 in
let%lwt body = Ohlc.fetch o_qargs in Ohlc.print_parsed_item (List.nth body 1);;

let joins = Lwt.join([get_instrument; get_ohlc]);;

let _ = Lwt_main.run joins