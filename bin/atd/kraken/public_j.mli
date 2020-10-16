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

val write_strnum :
  Bi_outbuf.t -> strnum -> unit
  (** Output a JSON value of type {!strnum}. *)

val string_of_strnum :
  ?len:int -> strnum -> string
  (** Serialize a value of type {!strnum}
      into a JSON string.
      @param len specifies the initial length
                 of the buffer used internally.
                 Default: 1024. *)

val read_strnum :
  Yojson.Safe.lexer_state -> Lexing.lexbuf -> strnum
  (** Input JSON data of type {!strnum}. *)

val strnum_of_string :
  string -> strnum
  (** Deserialize JSON data of type {!strnum}. *)

val write_ohlc_item :
  Bi_outbuf.t -> ohlc_item -> unit
  (** Output a JSON value of type {!ohlc_item}. *)

val string_of_ohlc_item :
  ?len:int -> ohlc_item -> string
  (** Serialize a value of type {!ohlc_item}
      into a JSON string.
      @param len specifies the initial length
                 of the buffer used internally.
                 Default: 1024. *)

val read_ohlc_item :
  Yojson.Safe.lexer_state -> Lexing.lexbuf -> ohlc_item
  (** Input JSON data of type {!ohlc_item}. *)

val ohlc_item_of_string :
  string -> ohlc_item
  (** Deserialize JSON data of type {!ohlc_item}. *)

val write_expected_ohlc :
  Bi_outbuf.t -> expected_ohlc -> unit
  (** Output a JSON value of type {!expected_ohlc}. *)

val string_of_expected_ohlc :
  ?len:int -> expected_ohlc -> string
  (** Serialize a value of type {!expected_ohlc}
      into a JSON string.
      @param len specifies the initial length
                 of the buffer used internally.
                 Default: 1024. *)

val read_expected_ohlc :
  Yojson.Safe.lexer_state -> Lexing.lexbuf -> expected_ohlc
  (** Input JSON data of type {!expected_ohlc}. *)

val expected_ohlc_of_string :
  string -> expected_ohlc
  (** Deserialize JSON data of type {!expected_ohlc}. *)

val write_expected_instrument :
  Bi_outbuf.t -> expected_instrument -> unit
  (** Output a JSON value of type {!expected_instrument}. *)

val string_of_expected_instrument :
  ?len:int -> expected_instrument -> string
  (** Serialize a value of type {!expected_instrument}
      into a JSON string.
      @param len specifies the initial length
                 of the buffer used internally.
                 Default: 1024. *)

val read_expected_instrument :
  Yojson.Safe.lexer_state -> Lexing.lexbuf -> expected_instrument
  (** Input JSON data of type {!expected_instrument}. *)

val expected_instrument_of_string :
  string -> expected_instrument
  (** Deserialize JSON data of type {!expected_instrument}. *)

