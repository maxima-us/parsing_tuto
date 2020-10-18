(* Auto-generated from "public.atd" *)
              [@@@ocaml.warning "-27-32-35-39"]

type strnum = Public_t.strnum

type trade_item = Public_t.trade_item

type fee_item = Public_t.fee_item

type symbol_item = Public_t.symbol_item = {
  altname: string;
  wsname: string;
  aclass_base: string;
  base: string;
  aclass_quote: string;
  quote: string;
  lot: string;
  pair_decimals: int;
  lot_decimals: int;
  lot_multiplier: int;
  leverage_buy: int list;
  leverage_sell: int list;
  fees: fee_item list;
  fees_maker: fee_item list;
  fee_volume_currency: string;
  margin_call: int;
  margin_stop: int;
  ordermin: string option
}

type ohlc_item = Public_t.ohlc_item

type expected_trades = Public_t.expected_trades

type expected_symbols = Public_t.expected_symbols

type bid_item = Public_t.bid_item

type expected_bid_list = Public_t.expected_bid_list

type ask_item = Public_t.ask_item

type expected_ask_list = Public_t.expected_ask_list

type expected_orderbook = Public_t.expected_orderbook = {
  asks: expected_ask_list;
  bids: expected_bid_list
}

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
let validate_trade_item = (
  fun _ _ -> None
)
let validate_fee_item = (
  fun _ _ -> None
)
let validate__8 = (
  fun _ _ -> None
)
let validate__7 = (
  fun _ _ -> None
)
let validate__6 = (
  fun _ _ -> None
)
let validate_symbol_item : _ -> symbol_item -> _ = (
  fun _ _ -> None
)
let validate_ohlc_item = (
  fun _ _ -> None
)
let validate__5 = (
  fun _ _ -> None
)
let validate_expected_trades = (
  validate__5
)
let validate__9 = (
  fun _ _ -> None
)
let validate_expected_symbols = (
  validate__9
)
let validate_bid_item = (
  fun _ _ -> None
)
let validate__4 = (
  fun _ _ -> None
)
let validate_expected_bid_list = (
  validate__4
)
let validate_ask_item = (
  fun _ _ -> None
)
let validate__3 = (
  fun _ _ -> None
)
let validate_expected_ask_list = (
  validate__3
)
let validate_expected_orderbook : _ -> expected_orderbook -> _ = (
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
let create_symbol_item 
  ?(altname = "")
  ?(wsname = "")
  ?(aclass_base = "")
  ?(base = "")
  ?(aclass_quote = "")
  ?(quote = "")
  ?(lot = "")
  ?(pair_decimals = 0)
  ?(lot_decimals = 0)
  ?(lot_multiplier = 0)
  ?(leverage_buy = [])
  ?(leverage_sell = [])
  ?(fees = [])
  ?(fees_maker = [])
  ?(fee_volume_currency = "")
  ?(margin_call = 0)
  ?(margin_stop = 0)
  ?ordermin
  () : symbol_item =
  {
    altname = altname;
    wsname = wsname;
    aclass_base = aclass_base;
    base = base;
    aclass_quote = aclass_quote;
    quote = quote;
    lot = lot;
    pair_decimals = pair_decimals;
    lot_decimals = lot_decimals;
    lot_multiplier = lot_multiplier;
    leverage_buy = leverage_buy;
    leverage_sell = leverage_sell;
    fees = fees;
    fees_maker = fees_maker;
    fee_volume_currency = fee_volume_currency;
    margin_call = margin_call;
    margin_stop = margin_stop;
    ordermin = ordermin;
  }
let create_expected_orderbook 
  ~asks
  ~bids
  () : expected_orderbook =
  {
    asks = asks;
    bids = bids;
  }
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
