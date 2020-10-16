(* Auto-generated from "public.atd" *)
              [@@@ocaml.warning "-27-32-35-39"]

type strnum = Public_t.strnum

type trade_item = Public_t.trade_item

type ohlc_item = Public_t.ohlc_item

type expected_trades = Public_t.expected_trades

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

val validate_ohlc_item :
  Atdgen_runtime.Util.Validation.path -> ohlc_item -> Atdgen_runtime.Util.Validation.error option
  (** Validate a value of type {!ohlc_item}. *)

val validate_expected_trades :
  Atdgen_runtime.Util.Validation.path -> expected_trades -> Atdgen_runtime.Util.Validation.error option
  (** Validate a value of type {!expected_trades}. *)

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

