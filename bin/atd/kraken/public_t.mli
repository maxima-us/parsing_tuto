(* Auto-generated from "public.atd" *)
              [@@@ocaml.warning "-27-32-35-39"]

type strnum = Float.t

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
