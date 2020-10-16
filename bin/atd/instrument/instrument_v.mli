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

val validate_vol :
  Atdgen_runtime.Util.Validation.path -> vol -> Atdgen_runtime.Util.Validation.error option
  (** Validate a value of type {!vol}. *)

val validate_strnum :
  Atdgen_runtime.Util.Validation.path -> strnum -> Atdgen_runtime.Util.Validation.error option
  (** Validate a value of type {!strnum}. *)

val validate_price :
  Atdgen_runtime.Util.Validation.path -> price -> Atdgen_runtime.Util.Validation.error option
  (** Validate a value of type {!price}. *)

val create_expected :
  ask: (strnum * strnum * strnum) ->
  bid: (strnum * strnum * strnum) ->
  last: (strnum * strnum) ->
  vol: (strnum * strnum) ->
  vwap: (strnum * strnum) ->
  trades: (int * int) ->
  low: (strnum * strnum) ->
  high: (strnum * strnum) ->
  o: strnum ->
  unit -> expected
  (** Create a record of type {!expected}. *)

val validate_expected :
  Atdgen_runtime.Util.Validation.path -> expected -> Atdgen_runtime.Util.Validation.error option
  (** Validate a value of type {!expected}. *)

val validate_error :
  Atdgen_runtime.Util.Validation.path -> error -> Atdgen_runtime.Util.Validation.error option
  (** Validate a value of type {!error}. *)

val create_date :
  year: int ->
  month: int ->
  day: int ->
  unit -> date
  (** Create a record of type {!date}. *)

val validate_date :
  Atdgen_runtime.Util.Validation.path -> date -> Atdgen_runtime.Util.Validation.error option
  (** Validate a value of type {!date}. *)

val validate_ask :
  Atdgen_runtime.Util.Validation.path -> ask -> Atdgen_runtime.Util.Validation.error option
  (** Validate a value of type {!ask}. *)

