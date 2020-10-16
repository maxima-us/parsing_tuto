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

val write_trade_item :
  Bi_outbuf.t -> trade_item -> unit
  (** Output a JSON value of type {!trade_item}. *)

val string_of_trade_item :
  ?len:int -> trade_item -> string
  (** Serialize a value of type {!trade_item}
      into a JSON string.
      @param len specifies the initial length
                 of the buffer used internally.
                 Default: 1024. *)

val read_trade_item :
  Yojson.Safe.lexer_state -> Lexing.lexbuf -> trade_item
  (** Input JSON data of type {!trade_item}. *)

val trade_item_of_string :
  string -> trade_item
  (** Deserialize JSON data of type {!trade_item}. *)

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

val write_expected_trades :
  Bi_outbuf.t -> expected_trades -> unit
  (** Output a JSON value of type {!expected_trades}. *)

val string_of_expected_trades :
  ?len:int -> expected_trades -> string
  (** Serialize a value of type {!expected_trades}
      into a JSON string.
      @param len specifies the initial length
                 of the buffer used internally.
                 Default: 1024. *)

val read_expected_trades :
  Yojson.Safe.lexer_state -> Lexing.lexbuf -> expected_trades
  (** Input JSON data of type {!expected_trades}. *)

val expected_trades_of_string :
  string -> expected_trades
  (** Deserialize JSON data of type {!expected_trades}. *)

val write_bid_item :
  Bi_outbuf.t -> bid_item -> unit
  (** Output a JSON value of type {!bid_item}. *)

val string_of_bid_item :
  ?len:int -> bid_item -> string
  (** Serialize a value of type {!bid_item}
      into a JSON string.
      @param len specifies the initial length
                 of the buffer used internally.
                 Default: 1024. *)

val read_bid_item :
  Yojson.Safe.lexer_state -> Lexing.lexbuf -> bid_item
  (** Input JSON data of type {!bid_item}. *)

val bid_item_of_string :
  string -> bid_item
  (** Deserialize JSON data of type {!bid_item}. *)

val write_expected_bid_list :
  Bi_outbuf.t -> expected_bid_list -> unit
  (** Output a JSON value of type {!expected_bid_list}. *)

val string_of_expected_bid_list :
  ?len:int -> expected_bid_list -> string
  (** Serialize a value of type {!expected_bid_list}
      into a JSON string.
      @param len specifies the initial length
                 of the buffer used internally.
                 Default: 1024. *)

val read_expected_bid_list :
  Yojson.Safe.lexer_state -> Lexing.lexbuf -> expected_bid_list
  (** Input JSON data of type {!expected_bid_list}. *)

val expected_bid_list_of_string :
  string -> expected_bid_list
  (** Deserialize JSON data of type {!expected_bid_list}. *)

val write_ask_item :
  Bi_outbuf.t -> ask_item -> unit
  (** Output a JSON value of type {!ask_item}. *)

val string_of_ask_item :
  ?len:int -> ask_item -> string
  (** Serialize a value of type {!ask_item}
      into a JSON string.
      @param len specifies the initial length
                 of the buffer used internally.
                 Default: 1024. *)

val read_ask_item :
  Yojson.Safe.lexer_state -> Lexing.lexbuf -> ask_item
  (** Input JSON data of type {!ask_item}. *)

val ask_item_of_string :
  string -> ask_item
  (** Deserialize JSON data of type {!ask_item}. *)

val write_expected_ask_list :
  Bi_outbuf.t -> expected_ask_list -> unit
  (** Output a JSON value of type {!expected_ask_list}. *)

val string_of_expected_ask_list :
  ?len:int -> expected_ask_list -> string
  (** Serialize a value of type {!expected_ask_list}
      into a JSON string.
      @param len specifies the initial length
                 of the buffer used internally.
                 Default: 1024. *)

val read_expected_ask_list :
  Yojson.Safe.lexer_state -> Lexing.lexbuf -> expected_ask_list
  (** Input JSON data of type {!expected_ask_list}. *)

val expected_ask_list_of_string :
  string -> expected_ask_list
  (** Deserialize JSON data of type {!expected_ask_list}. *)

val write_expected_orderbook :
  Bi_outbuf.t -> expected_orderbook -> unit
  (** Output a JSON value of type {!expected_orderbook}. *)

val string_of_expected_orderbook :
  ?len:int -> expected_orderbook -> string
  (** Serialize a value of type {!expected_orderbook}
      into a JSON string.
      @param len specifies the initial length
                 of the buffer used internally.
                 Default: 1024. *)

val read_expected_orderbook :
  Yojson.Safe.lexer_state -> Lexing.lexbuf -> expected_orderbook
  (** Input JSON data of type {!expected_orderbook}. *)

val expected_orderbook_of_string :
  string -> expected_orderbook
  (** Deserialize JSON data of type {!expected_orderbook}. *)

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

