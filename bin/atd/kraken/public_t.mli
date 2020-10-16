(* Auto-generated from "public.atd" *)
              [@@@ocaml.warning "-27-32-35-39"]

type strnum = Float.t

type trade_item = (strnum * strnum * float * string * string * string)

type ohlc_item = (
    int
  * strnum
  * strnum
  * strnum
  * strnum
  * strnum
  * strnum
  * int
)

type expected_trades = trade_item list

type bid_item = (strnum * strnum * int)

type expected_bid_list = bid_item list

type ask_item = (strnum * strnum * int)

type expected_ask_list = ask_item list

type expected_orderbook = {
  asks: expected_ask_list;
  bids: expected_bid_list
}

type expected_ohlc = ohlc_item list

type expected_instrument = {
  ask: (strnum * strnum * strnum);
  bid: (strnum * strnum * strnum);
  last: (strnum * strnum);
  vol: (strnum * strnum);
  vwap: (strnum * strnum);
  trades: (int * int);
  low: (strnum * strnum);
  high: (strnum * strnum);
  o: strnum
}
