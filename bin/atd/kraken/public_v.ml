(* Auto-generated from "public.atd" *)
              [@@@ocaml.warning "-27-32-35-39"]

type strnum = Public_t.strnum

type ohlc_item = Public_t.ohlc_item

type expected_ohlc = Public_t.expected_ohlc

type expected_instrument = Public_t.expected_instrument = {
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

let validate__1 = (
  fun _ _ -> None
)
let validate_strnum = (
  validate__1
)
let validate_ohlc_item = (
  fun _ _ -> None
)
let validate__2 = (
  fun _ _ -> None
)
let validate_expected_ohlc = (
  validate__2
)
let validate_expected_instrument : _ -> expected_instrument -> _ = (
  fun _ _ -> None
)
let create_expected_instrument 
  ~ask
  ~bid
  ~last
  ~vol
  ~vwap
  ~trades
  ~low
  ~high
  ~o
  () : expected_instrument =
  {
    ask = ask;
    bid = bid;
    last = last;
    vol = vol;
    vwap = vwap;
    trades = trades;
    low = low;
    high = high;
    o = o;
  }
