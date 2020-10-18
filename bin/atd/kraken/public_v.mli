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

val validate_strnum :
  Atdgen_runtime.Util.Validation.path -> strnum -> Atdgen_runtime.Util.Validation.error option
  (** Validate a value of type {!strnum}. *)

val validate_trade_item :
  Atdgen_runtime.Util.Validation.path -> trade_item -> Atdgen_runtime.Util.Validation.error option
  (** Validate a value of type {!trade_item}. *)

val validate_fee_item :
  Atdgen_runtime.Util.Validation.path -> fee_item -> Atdgen_runtime.Util.Validation.error option
  (** Validate a value of type {!fee_item}. *)

val create_symbol_item :
  ?altname: string ->
  ?wsname: string ->
  ?aclass_base: string ->
  ?base: string ->
  ?aclass_quote: string ->
  ?quote: string ->
  ?lot: string ->
  ?pair_decimals: int ->
  ?lot_decimals: int ->
  ?lot_multiplier: int ->
  ?leverage_buy: int list ->
  ?leverage_sell: int list ->
  ?fees: fee_item list ->
  ?fees_maker: fee_item list ->
  ?fee_volume_currency: string ->
  ?margin_call: int ->
  ?margin_stop: int ->
  ?ordermin: string ->
  unit -> symbol_item
  (** Create a record of type {!symbol_item}. *)

val validate_symbol_item :
  Atdgen_runtime.Util.Validation.path -> symbol_item -> Atdgen_runtime.Util.Validation.error option
  (** Validate a value of type {!symbol_item}. *)

val validate_ohlc_item :
  Atdgen_runtime.Util.Validation.path -> ohlc_item -> Atdgen_runtime.Util.Validation.error option
  (** Validate a value of type {!ohlc_item}. *)

val validate_expected_trades :
  Atdgen_runtime.Util.Validation.path -> expected_trades -> Atdgen_runtime.Util.Validation.error option
  (** Validate a value of type {!expected_trades}. *)

val validate_expected_symbols :
  Atdgen_runtime.Util.Validation.path -> expected_symbols -> Atdgen_runtime.Util.Validation.error option
  (** Validate a value of type {!expected_symbols}. *)

val validate_bid_item :
  Atdgen_runtime.Util.Validation.path -> bid_item -> Atdgen_runtime.Util.Validation.error option
  (** Validate a value of type {!bid_item}. *)

val validate_expected_bid_list :
  Atdgen_runtime.Util.Validation.path -> expected_bid_list -> Atdgen_runtime.Util.Validation.error option
  (** Validate a value of type {!expected_bid_list}. *)

val validate_ask_item :
  Atdgen_runtime.Util.Validation.path -> ask_item -> Atdgen_runtime.Util.Validation.error option
  (** Validate a value of type {!ask_item}. *)

val validate_expected_ask_list :
  Atdgen_runtime.Util.Validation.path -> expected_ask_list -> Atdgen_runtime.Util.Validation.error option
  (** Validate a value of type {!expected_ask_list}. *)

val create_expected_orderbook :
  asks: expected_ask_list ->
  bids: expected_bid_list ->
  unit -> expected_orderbook
  (** Create a record of type {!expected_orderbook}. *)

val validate_expected_orderbook :
  Atdgen_runtime.Util.Validation.path -> expected_orderbook -> Atdgen_runtime.Util.Validation.error option
  (** Validate a value of type {!expected_orderbook}. *)

val validate_expected_ohlc :
  Atdgen_runtime.Util.Validation.path -> expected_ohlc -> Atdgen_runtime.Util.Validation.error option
  (** Validate a value of type {!expected_ohlc}. *)

val create_expected_instrument :
  ask: (strnum * strnum * strnum) ->
  bid: (strnum * strnum * strnum) ->
  last: (strnum * strnum) ->
  vol: (strnum * strnum) ->
  vwap: (strnum * strnum) ->
  trades: (int * int) ->
  low: (strnum * strnum) ->
  high: (strnum * strnum) ->
  o: strnum ->
  unit -> expected_instrument
  (** Create a record of type {!expected_instrument}. *)

val validate_expected_instrument :
  Atdgen_runtime.Util.Validation.path -> expected_instrument -> Atdgen_runtime.Util.Validation.error option
  (** Validate a value of type {!expected_instrument}. *)

