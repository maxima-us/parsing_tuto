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

val validate_strnum :
  Atdgen_runtime.Util.Validation.path -> strnum -> Atdgen_runtime.Util.Validation.error option
  (** Validate a value of type {!strnum}. *)

val validate_ohlc_item :
  Atdgen_runtime.Util.Validation.path -> ohlc_item -> Atdgen_runtime.Util.Validation.error option
  (** Validate a value of type {!ohlc_item}. *)

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

