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

val write_vol :
  Bi_outbuf.t -> vol -> unit
  (** Output a JSON value of type {!vol}. *)

val string_of_vol :
  ?len:int -> vol -> string
  (** Serialize a value of type {!vol}
      into a JSON string.
      @param len specifies the initial length
                 of the buffer used internally.
                 Default: 1024. *)

val read_vol :
  Yojson.Safe.lexer_state -> Lexing.lexbuf -> vol
  (** Input JSON data of type {!vol}. *)

val vol_of_string :
  string -> vol
  (** Deserialize JSON data of type {!vol}. *)

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

val write_price :
  Bi_outbuf.t -> price -> unit
  (** Output a JSON value of type {!price}. *)

val string_of_price :
  ?len:int -> price -> string
  (** Serialize a value of type {!price}
      into a JSON string.
      @param len specifies the initial length
                 of the buffer used internally.
                 Default: 1024. *)

val read_price :
  Yojson.Safe.lexer_state -> Lexing.lexbuf -> price
  (** Input JSON data of type {!price}. *)

val price_of_string :
  string -> price
  (** Deserialize JSON data of type {!price}. *)

val write_expected :
  Bi_outbuf.t -> expected -> unit
  (** Output a JSON value of type {!expected}. *)

val string_of_expected :
  ?len:int -> expected -> string
  (** Serialize a value of type {!expected}
      into a JSON string.
      @param len specifies the initial length
                 of the buffer used internally.
                 Default: 1024. *)

val read_expected :
  Yojson.Safe.lexer_state -> Lexing.lexbuf -> expected
  (** Input JSON data of type {!expected}. *)

val expected_of_string :
  string -> expected
  (** Deserialize JSON data of type {!expected}. *)

val write_error :
  Bi_outbuf.t -> error -> unit
  (** Output a JSON value of type {!error}. *)

val string_of_error :
  ?len:int -> error -> string
  (** Serialize a value of type {!error}
      into a JSON string.
      @param len specifies the initial length
                 of the buffer used internally.
                 Default: 1024. *)

val read_error :
  Yojson.Safe.lexer_state -> Lexing.lexbuf -> error
  (** Input JSON data of type {!error}. *)

val error_of_string :
  string -> error
  (** Deserialize JSON data of type {!error}. *)

val write_date :
  Bi_outbuf.t -> date -> unit
  (** Output a JSON value of type {!date}. *)

val string_of_date :
  ?len:int -> date -> string
  (** Serialize a value of type {!date}
      into a JSON string.
      @param len specifies the initial length
                 of the buffer used internally.
                 Default: 1024. *)

val read_date :
  Yojson.Safe.lexer_state -> Lexing.lexbuf -> date
  (** Input JSON data of type {!date}. *)

val date_of_string :
  string -> date
  (** Deserialize JSON data of type {!date}. *)

val write_ask :
  Bi_outbuf.t -> ask -> unit
  (** Output a JSON value of type {!ask}. *)

val string_of_ask :
  ?len:int -> ask -> string
  (** Serialize a value of type {!ask}
      into a JSON string.
      @param len specifies the initial length
                 of the buffer used internally.
                 Default: 1024. *)

val read_ask :
  Yojson.Safe.lexer_state -> Lexing.lexbuf -> ask
  (** Input JSON data of type {!ask}. *)

val ask_of_string :
  string -> ask
  (** Deserialize JSON data of type {!ask}. *)

