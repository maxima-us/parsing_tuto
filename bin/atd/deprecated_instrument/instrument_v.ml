(* Auto-generated from "instrument.atd" *)
              [@@@ocaml.warning "-27-32-35-39"]

type vol = Instrument_t.vol =  Vol of float 

type strnum = Instrument_t.strnum

type price = Instrument_t.price =  Price of float 

type expected = Instrument_t.expected = {
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

type error = Instrument_t.error

type date = Instrument_t.date = { year: int; month: int; day: int }

type ask = Instrument_t.ask =  Ask of (price * vol) 

let validate_vol : _ -> vol -> _ = (
  fun _ _ -> None
)
let validate__2 = (
  fun _ _ -> None
)
let validate_strnum = (
  validate__2
)
let validate_price : _ -> price -> _ = (
  fun _ _ -> None
)
let validate_expected : _ -> expected -> _ = (
  fun _ _ -> None
)
let validate__1 = (
  fun _ _ -> None
)
let validate_error = (
  validate__1
)
let validate_date : _ -> date -> _ = (
  fun _ _ -> None
)
let validate_ask : _ -> ask -> _ = (
  fun _ _ -> None
)
let create_expected 
  ~ask
  ~bid
  ~last
  ~vol
  ~vwap
  ~trades
  ~low
  ~high
  ~o
  () : expected =
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
let create_date 
  ~year
  ~month
  ~day
  () : date =
  {
    year = year;
    month = month;
    day = day;
  }
