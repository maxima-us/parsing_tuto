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

let write__1 = (
  fun ob x -> (
    let x = ( Float.to_string ) x in (
      Yojson.Safe.write_string
    ) ob x)
)
let string_of__1 ?(len = 1024) x =
  let ob = Bi_outbuf.create len in
  write__1 ob x;
  Bi_outbuf.contents ob
let read__1 = (
  fun p lb ->
    let x = (
      Atdgen_runtime.Oj_run.read_string
    ) p lb in
    ( Float.of_string ) x
)
let _1_of_string s =
  read__1 (Yojson.Safe.init_lexer ()) (Lexing.from_string s)
let write_strnum = (
  write__1
)
let string_of_strnum ?(len = 1024) x =
  let ob = Bi_outbuf.create len in
  write_strnum ob x;
  Bi_outbuf.contents ob
let read_strnum = (
  read__1
)
let strnum_of_string s =
  read_strnum (Yojson.Safe.init_lexer ()) (Lexing.from_string s)
let write_trade_item = (
  fun ob x ->
    Bi_outbuf.add_char ob '(';
    (let x, _, _, _, _, _ = x in
    (
      write_strnum
    ) ob x
    );
    Bi_outbuf.add_char ob ',';
    (let _, x, _, _, _, _ = x in
    (
      write_strnum
    ) ob x
    );
    Bi_outbuf.add_char ob ',';
    (let _, _, x, _, _, _ = x in
    (
      Yojson.Safe.write_float
    ) ob x
    );
    Bi_outbuf.add_char ob ',';
    (let _, _, _, x, _, _ = x in
    (
      Yojson.Safe.write_string
    ) ob x
    );
    Bi_outbuf.add_char ob ',';
    (let _, _, _, _, x, _ = x in
    (
      Yojson.Safe.write_string
    ) ob x
    );
    Bi_outbuf.add_char ob ',';
    (let _, _, _, _, _, x = x in
    (
      Yojson.Safe.write_string
    ) ob x
    );
    Bi_outbuf.add_char ob ')';
)
let string_of_trade_item ?(len = 1024) x =
  let ob = Bi_outbuf.create len in
  write_trade_item ob x;
  Bi_outbuf.contents ob
let read_trade_item = (
  fun p lb ->
    Yojson.Safe.read_space p lb;
    let std_tuple = Yojson.Safe.start_any_tuple p lb in
    let len = ref 0 in
    let end_of_tuple = ref false in
    (try
      let x0 =
        let x =
          (
            read_strnum
          ) p lb
        in
        incr len;
        Yojson.Safe.read_space p lb;
        Yojson.Safe.read_tuple_sep2 p std_tuple lb;
        x
      in
      let x1 =
        let x =
          (
            read_strnum
          ) p lb
        in
        incr len;
        Yojson.Safe.read_space p lb;
        Yojson.Safe.read_tuple_sep2 p std_tuple lb;
        x
      in
      let x2 =
        let x =
          (
            Atdgen_runtime.Oj_run.read_number
          ) p lb
        in
        incr len;
        Yojson.Safe.read_space p lb;
        Yojson.Safe.read_tuple_sep2 p std_tuple lb;
        x
      in
      let x3 =
        let x =
          (
            Atdgen_runtime.Oj_run.read_string
          ) p lb
        in
        incr len;
        Yojson.Safe.read_space p lb;
        Yojson.Safe.read_tuple_sep2 p std_tuple lb;
        x
      in
      let x4 =
        let x =
          (
            Atdgen_runtime.Oj_run.read_string
          ) p lb
        in
        incr len;
        Yojson.Safe.read_space p lb;
        Yojson.Safe.read_tuple_sep2 p std_tuple lb;
        x
      in
      let x5 =
        let x =
          (
            Atdgen_runtime.Oj_run.read_string
          ) p lb
        in
        incr len;
        (try
          Yojson.Safe.read_space p lb;
          Yojson.Safe.read_tuple_sep2 p std_tuple lb;
        with Yojson.End_of_tuple -> end_of_tuple := true);
        x
      in
      if not !end_of_tuple then (
        try
          while true do
            Yojson.Safe.skip_json p lb;
            Yojson.Safe.read_space p lb;
            Yojson.Safe.read_tuple_sep2 p std_tuple lb;
          done
        with Yojson.End_of_tuple -> ()
      );
      (x0, x1, x2, x3, x4, x5)
    with Yojson.End_of_tuple ->
      Atdgen_runtime.Oj_run.missing_tuple_fields p !len [ 0; 1; 2; 3; 4; 5 ]);
)
let trade_item_of_string s =
  read_trade_item (Yojson.Safe.init_lexer ()) (Lexing.from_string s)
let write_fee_item = (
  fun ob x ->
    Bi_outbuf.add_char ob '(';
    (let x, _ = x in
    (
      Yojson.Safe.write_int
    ) ob x
    );
    Bi_outbuf.add_char ob ',';
    (let _, x = x in
    (
      Yojson.Safe.write_float
    ) ob x
    );
    Bi_outbuf.add_char ob ')';
)
let string_of_fee_item ?(len = 1024) x =
  let ob = Bi_outbuf.create len in
  write_fee_item ob x;
  Bi_outbuf.contents ob
let read_fee_item = (
  fun p lb ->
    Yojson.Safe.read_space p lb;
    let std_tuple = Yojson.Safe.start_any_tuple p lb in
    let len = ref 0 in
    let end_of_tuple = ref false in
    (try
      let x0 =
        let x =
          (
            Atdgen_runtime.Oj_run.read_int
          ) p lb
        in
        incr len;
        Yojson.Safe.read_space p lb;
        Yojson.Safe.read_tuple_sep2 p std_tuple lb;
        x
      in
      let x1 =
        let x =
          (
            Atdgen_runtime.Oj_run.read_number
          ) p lb
        in
        incr len;
        (try
          Yojson.Safe.read_space p lb;
          Yojson.Safe.read_tuple_sep2 p std_tuple lb;
        with Yojson.End_of_tuple -> end_of_tuple := true);
        x
      in
      if not !end_of_tuple then (
        try
          while true do
            Yojson.Safe.skip_json p lb;
            Yojson.Safe.read_space p lb;
            Yojson.Safe.read_tuple_sep2 p std_tuple lb;
          done
        with Yojson.End_of_tuple -> ()
      );
      (x0, x1)
    with Yojson.End_of_tuple ->
      Atdgen_runtime.Oj_run.missing_tuple_fields p !len [ 0; 1 ]);
)
let fee_item_of_string s =
  read_fee_item (Yojson.Safe.init_lexer ()) (Lexing.from_string s)
let write__8 = (
  Atdgen_runtime.Oj_run.write_option (
    Yojson.Safe.write_string
  )
)
let string_of__8 ?(len = 1024) x =
  let ob = Bi_outbuf.create len in
  write__8 ob x;
  Bi_outbuf.contents ob
let read__8 = (
  fun p lb ->
    Yojson.Safe.read_space p lb;
    match Yojson.Safe.start_any_variant p lb with
      | `Edgy_bracket -> (
          match Yojson.Safe.read_ident p lb with
            | "None" ->
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_gt p lb;
              (None : _ option)
            | "Some" ->
              Atdgen_runtime.Oj_run.read_until_field_value p lb;
              let x = (
                  Atdgen_runtime.Oj_run.read_string
                ) p lb
              in
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_gt p lb;
              (Some x : _ option)
            | x ->
              Atdgen_runtime.Oj_run.invalid_variant_tag p x
        )
      | `Double_quote -> (
          match Yojson.Safe.finish_string p lb with
            | "None" ->
              (None : _ option)
            | x ->
              Atdgen_runtime.Oj_run.invalid_variant_tag p x
        )
      | `Square_bracket -> (
          match Atdgen_runtime.Oj_run.read_string p lb with
            | "Some" ->
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_comma p lb;
              Yojson.Safe.read_space p lb;
              let x = (
                  Atdgen_runtime.Oj_run.read_string
                ) p lb
              in
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_rbr p lb;
              (Some x : _ option)
            | x ->
              Atdgen_runtime.Oj_run.invalid_variant_tag p x
        )
)
let _8_of_string s =
  read__8 (Yojson.Safe.init_lexer ()) (Lexing.from_string s)
let write__7 = (
  Atdgen_runtime.Oj_run.write_list (
    write_fee_item
  )
)
let string_of__7 ?(len = 1024) x =
  let ob = Bi_outbuf.create len in
  write__7 ob x;
  Bi_outbuf.contents ob
let read__7 = (
  Atdgen_runtime.Oj_run.read_list (
    read_fee_item
  )
)
let _7_of_string s =
  read__7 (Yojson.Safe.init_lexer ()) (Lexing.from_string s)
let write__6 = (
  Atdgen_runtime.Oj_run.write_list (
    Yojson.Safe.write_int
  )
)
let string_of__6 ?(len = 1024) x =
  let ob = Bi_outbuf.create len in
  write__6 ob x;
  Bi_outbuf.contents ob
let read__6 = (
  Atdgen_runtime.Oj_run.read_list (
    Atdgen_runtime.Oj_run.read_int
  )
)
let _6_of_string s =
  read__6 (Yojson.Safe.init_lexer ()) (Lexing.from_string s)
let write_symbol_item : _ -> symbol_item -> _ = (
  fun ob (x : symbol_item) ->
    Bi_outbuf.add_char ob '{';
    let is_first = ref true in
    if x.altname <> "" then (
      if !is_first then
        is_first := false
      else
        Bi_outbuf.add_char ob ',';
      Bi_outbuf.add_string ob "\"altname\":";
      (
        Yojson.Safe.write_string
      )
        ob x.altname;
    );
    if x.wsname <> "" then (
      if !is_first then
        is_first := false
      else
        Bi_outbuf.add_char ob ',';
      Bi_outbuf.add_string ob "\"wsname\":";
      (
        Yojson.Safe.write_string
      )
        ob x.wsname;
    );
    if x.aclass_base <> "" then (
      if !is_first then
        is_first := false
      else
        Bi_outbuf.add_char ob ',';
      Bi_outbuf.add_string ob "\"aclass_base\":";
      (
        Yojson.Safe.write_string
      )
        ob x.aclass_base;
    );
    if x.base <> "" then (
      if !is_first then
        is_first := false
      else
        Bi_outbuf.add_char ob ',';
      Bi_outbuf.add_string ob "\"base\":";
      (
        Yojson.Safe.write_string
      )
        ob x.base;
    );
    if x.aclass_quote <> "" then (
      if !is_first then
        is_first := false
      else
        Bi_outbuf.add_char ob ',';
      Bi_outbuf.add_string ob "\"aclass_quote\":";
      (
        Yojson.Safe.write_string
      )
        ob x.aclass_quote;
    );
    if x.quote <> "" then (
      if !is_first then
        is_first := false
      else
        Bi_outbuf.add_char ob ',';
      Bi_outbuf.add_string ob "\"quote\":";
      (
        Yojson.Safe.write_string
      )
        ob x.quote;
    );
    if x.lot <> "" then (
      if !is_first then
        is_first := false
      else
        Bi_outbuf.add_char ob ',';
      Bi_outbuf.add_string ob "\"lot\":";
      (
        Yojson.Safe.write_string
      )
        ob x.lot;
    );
    if x.pair_decimals <> 0 then (
      if !is_first then
        is_first := false
      else
        Bi_outbuf.add_char ob ',';
      Bi_outbuf.add_string ob "\"pair_decimals\":";
      (
        Yojson.Safe.write_int
      )
        ob x.pair_decimals;
    );
    if x.lot_decimals <> 0 then (
      if !is_first then
        is_first := false
      else
        Bi_outbuf.add_char ob ',';
      Bi_outbuf.add_string ob "\"lot_decimals\":";
      (
        Yojson.Safe.write_int
      )
        ob x.lot_decimals;
    );
    if x.lot_multiplier <> 0 then (
      if !is_first then
        is_first := false
      else
        Bi_outbuf.add_char ob ',';
      Bi_outbuf.add_string ob "\"lot_multiplier\":";
      (
        Yojson.Safe.write_int
      )
        ob x.lot_multiplier;
    );
    if x.leverage_buy <> [] then (
      if !is_first then
        is_first := false
      else
        Bi_outbuf.add_char ob ',';
      Bi_outbuf.add_string ob "\"leverage_buy\":";
      (
        write__6
      )
        ob x.leverage_buy;
    );
    if x.leverage_sell <> [] then (
      if !is_first then
        is_first := false
      else
        Bi_outbuf.add_char ob ',';
      Bi_outbuf.add_string ob "\"leverage_sell\":";
      (
        write__6
      )
        ob x.leverage_sell;
    );
    if x.fees <> [] then (
      if !is_first then
        is_first := false
      else
        Bi_outbuf.add_char ob ',';
      Bi_outbuf.add_string ob "\"fees\":";
      (
        write__7
      )
        ob x.fees;
    );
    if x.fees_maker <> [] then (
      if !is_first then
        is_first := false
      else
        Bi_outbuf.add_char ob ',';
      Bi_outbuf.add_string ob "\"fees_maker\":";
      (
        write__7
      )
        ob x.fees_maker;
    );
    if x.fee_volume_currency <> "" then (
      if !is_first then
        is_first := false
      else
        Bi_outbuf.add_char ob ',';
      Bi_outbuf.add_string ob "\"fee_volume_currency\":";
      (
        Yojson.Safe.write_string
      )
        ob x.fee_volume_currency;
    );
    if x.margin_call <> 0 then (
      if !is_first then
        is_first := false
      else
        Bi_outbuf.add_char ob ',';
      Bi_outbuf.add_string ob "\"margin_call\":";
      (
        Yojson.Safe.write_int
      )
        ob x.margin_call;
    );
    if x.margin_stop <> 0 then (
      if !is_first then
        is_first := false
      else
        Bi_outbuf.add_char ob ',';
      Bi_outbuf.add_string ob "\"margin_stop\":";
      (
        Yojson.Safe.write_int
      )
        ob x.margin_stop;
    );
    (match x.ordermin with None -> () | Some x ->
      if !is_first then
        is_first := false
      else
        Bi_outbuf.add_char ob ',';
      Bi_outbuf.add_string ob "\"ordermin\":";
      (
        Yojson.Safe.write_string
      )
        ob x;
    );
    Bi_outbuf.add_char ob '}';
)
let string_of_symbol_item ?(len = 1024) x =
  let ob = Bi_outbuf.create len in
  write_symbol_item ob x;
  Bi_outbuf.contents ob
let read_symbol_item = (
  fun p lb ->
    Yojson.Safe.read_space p lb;
    Yojson.Safe.read_lcurl p lb;
    let field_altname = ref ("") in
    let field_wsname = ref ("") in
    let field_aclass_base = ref ("") in
    let field_base = ref ("") in
    let field_aclass_quote = ref ("") in
    let field_quote = ref ("") in
    let field_lot = ref ("") in
    let field_pair_decimals = ref (0) in
    let field_lot_decimals = ref (0) in
    let field_lot_multiplier = ref (0) in
    let field_leverage_buy = ref ([]) in
    let field_leverage_sell = ref ([]) in
    let field_fees = ref ([]) in
    let field_fees_maker = ref ([]) in
    let field_fee_volume_currency = ref ("") in
    let field_margin_call = ref (0) in
    let field_margin_stop = ref (0) in
    let field_ordermin = ref (None) in
    try
      Yojson.Safe.read_space p lb;
      Yojson.Safe.read_object_end lb;
      Yojson.Safe.read_space p lb;
      let f =
        fun s pos len ->
          if pos < 0 || len < 0 || pos + len > String.length s then
            invalid_arg "out-of-bounds substring position or length";
          match len with
            | 3 -> (
                if String.unsafe_get s pos = 'l' && String.unsafe_get s (pos+1) = 'o' && String.unsafe_get s (pos+2) = 't' then (
                  6
                )
                else (
                  -1
                )
              )
            | 4 -> (
                match String.unsafe_get s pos with
                  | 'b' -> (
                      if String.unsafe_get s (pos+1) = 'a' && String.unsafe_get s (pos+2) = 's' && String.unsafe_get s (pos+3) = 'e' then (
                        3
                      )
                      else (
                        -1
                      )
                    )
                  | 'f' -> (
                      if String.unsafe_get s (pos+1) = 'e' && String.unsafe_get s (pos+2) = 'e' && String.unsafe_get s (pos+3) = 's' then (
                        12
                      )
                      else (
                        -1
                      )
                    )
                  | _ -> (
                      -1
                    )
              )
            | 5 -> (
                if String.unsafe_get s pos = 'q' && String.unsafe_get s (pos+1) = 'u' && String.unsafe_get s (pos+2) = 'o' && String.unsafe_get s (pos+3) = 't' && String.unsafe_get s (pos+4) = 'e' then (
                  5
                )
                else (
                  -1
                )
              )
            | 6 -> (
                if String.unsafe_get s pos = 'w' && String.unsafe_get s (pos+1) = 's' && String.unsafe_get s (pos+2) = 'n' && String.unsafe_get s (pos+3) = 'a' && String.unsafe_get s (pos+4) = 'm' && String.unsafe_get s (pos+5) = 'e' then (
                  1
                )
                else (
                  -1
                )
              )
            | 7 -> (
                if String.unsafe_get s pos = 'a' && String.unsafe_get s (pos+1) = 'l' && String.unsafe_get s (pos+2) = 't' && String.unsafe_get s (pos+3) = 'n' && String.unsafe_get s (pos+4) = 'a' && String.unsafe_get s (pos+5) = 'm' && String.unsafe_get s (pos+6) = 'e' then (
                  0
                )
                else (
                  -1
                )
              )
            | 8 -> (
                if String.unsafe_get s pos = 'o' && String.unsafe_get s (pos+1) = 'r' && String.unsafe_get s (pos+2) = 'd' && String.unsafe_get s (pos+3) = 'e' && String.unsafe_get s (pos+4) = 'r' && String.unsafe_get s (pos+5) = 'm' && String.unsafe_get s (pos+6) = 'i' && String.unsafe_get s (pos+7) = 'n' then (
                  17
                )
                else (
                  -1
                )
              )
            | 10 -> (
                if String.unsafe_get s pos = 'f' && String.unsafe_get s (pos+1) = 'e' && String.unsafe_get s (pos+2) = 'e' && String.unsafe_get s (pos+3) = 's' && String.unsafe_get s (pos+4) = '_' && String.unsafe_get s (pos+5) = 'm' && String.unsafe_get s (pos+6) = 'a' && String.unsafe_get s (pos+7) = 'k' && String.unsafe_get s (pos+8) = 'e' && String.unsafe_get s (pos+9) = 'r' then (
                  13
                )
                else (
                  -1
                )
              )
            | 11 -> (
                match String.unsafe_get s pos with
                  | 'a' -> (
                      if String.unsafe_get s (pos+1) = 'c' && String.unsafe_get s (pos+2) = 'l' && String.unsafe_get s (pos+3) = 'a' && String.unsafe_get s (pos+4) = 's' && String.unsafe_get s (pos+5) = 's' && String.unsafe_get s (pos+6) = '_' && String.unsafe_get s (pos+7) = 'b' && String.unsafe_get s (pos+8) = 'a' && String.unsafe_get s (pos+9) = 's' && String.unsafe_get s (pos+10) = 'e' then (
                        2
                      )
                      else (
                        -1
                      )
                    )
                  | 'm' -> (
                      if String.unsafe_get s (pos+1) = 'a' && String.unsafe_get s (pos+2) = 'r' && String.unsafe_get s (pos+3) = 'g' && String.unsafe_get s (pos+4) = 'i' && String.unsafe_get s (pos+5) = 'n' && String.unsafe_get s (pos+6) = '_' then (
                        match String.unsafe_get s (pos+7) with
                          | 'c' -> (
                              if String.unsafe_get s (pos+8) = 'a' && String.unsafe_get s (pos+9) = 'l' && String.unsafe_get s (pos+10) = 'l' then (
                                15
                              )
                              else (
                                -1
                              )
                            )
                          | 's' -> (
                              if String.unsafe_get s (pos+8) = 't' && String.unsafe_get s (pos+9) = 'o' && String.unsafe_get s (pos+10) = 'p' then (
                                16
                              )
                              else (
                                -1
                              )
                            )
                          | _ -> (
                              -1
                            )
                      )
                      else (
                        -1
                      )
                    )
                  | _ -> (
                      -1
                    )
              )
            | 12 -> (
                match String.unsafe_get s pos with
                  | 'a' -> (
                      if String.unsafe_get s (pos+1) = 'c' && String.unsafe_get s (pos+2) = 'l' && String.unsafe_get s (pos+3) = 'a' && String.unsafe_get s (pos+4) = 's' && String.unsafe_get s (pos+5) = 's' && String.unsafe_get s (pos+6) = '_' && String.unsafe_get s (pos+7) = 'q' && String.unsafe_get s (pos+8) = 'u' && String.unsafe_get s (pos+9) = 'o' && String.unsafe_get s (pos+10) = 't' && String.unsafe_get s (pos+11) = 'e' then (
                        4
                      )
                      else (
                        -1
                      )
                    )
                  | 'l' -> (
                      match String.unsafe_get s (pos+1) with
                        | 'e' -> (
                            if String.unsafe_get s (pos+2) = 'v' && String.unsafe_get s (pos+3) = 'e' && String.unsafe_get s (pos+4) = 'r' && String.unsafe_get s (pos+5) = 'a' && String.unsafe_get s (pos+6) = 'g' && String.unsafe_get s (pos+7) = 'e' && String.unsafe_get s (pos+8) = '_' && String.unsafe_get s (pos+9) = 'b' && String.unsafe_get s (pos+10) = 'u' && String.unsafe_get s (pos+11) = 'y' then (
                              10
                            )
                            else (
                              -1
                            )
                          )
                        | 'o' -> (
                            if String.unsafe_get s (pos+2) = 't' && String.unsafe_get s (pos+3) = '_' && String.unsafe_get s (pos+4) = 'd' && String.unsafe_get s (pos+5) = 'e' && String.unsafe_get s (pos+6) = 'c' && String.unsafe_get s (pos+7) = 'i' && String.unsafe_get s (pos+8) = 'm' && String.unsafe_get s (pos+9) = 'a' && String.unsafe_get s (pos+10) = 'l' && String.unsafe_get s (pos+11) = 's' then (
                              8
                            )
                            else (
                              -1
                            )
                          )
                        | _ -> (
                            -1
                          )
                    )
                  | _ -> (
                      -1
                    )
              )
            | 13 -> (
                match String.unsafe_get s pos with
                  | 'l' -> (
                      if String.unsafe_get s (pos+1) = 'e' && String.unsafe_get s (pos+2) = 'v' && String.unsafe_get s (pos+3) = 'e' && String.unsafe_get s (pos+4) = 'r' && String.unsafe_get s (pos+5) = 'a' && String.unsafe_get s (pos+6) = 'g' && String.unsafe_get s (pos+7) = 'e' && String.unsafe_get s (pos+8) = '_' && String.unsafe_get s (pos+9) = 's' && String.unsafe_get s (pos+10) = 'e' && String.unsafe_get s (pos+11) = 'l' && String.unsafe_get s (pos+12) = 'l' then (
                        11
                      )
                      else (
                        -1
                      )
                    )
                  | 'p' -> (
                      if String.unsafe_get s (pos+1) = 'a' && String.unsafe_get s (pos+2) = 'i' && String.unsafe_get s (pos+3) = 'r' && String.unsafe_get s (pos+4) = '_' && String.unsafe_get s (pos+5) = 'd' && String.unsafe_get s (pos+6) = 'e' && String.unsafe_get s (pos+7) = 'c' && String.unsafe_get s (pos+8) = 'i' && String.unsafe_get s (pos+9) = 'm' && String.unsafe_get s (pos+10) = 'a' && String.unsafe_get s (pos+11) = 'l' && String.unsafe_get s (pos+12) = 's' then (
                        7
                      )
                      else (
                        -1
                      )
                    )
                  | _ -> (
                      -1
                    )
              )
            | 14 -> (
                if String.unsafe_get s pos = 'l' && String.unsafe_get s (pos+1) = 'o' && String.unsafe_get s (pos+2) = 't' && String.unsafe_get s (pos+3) = '_' && String.unsafe_get s (pos+4) = 'm' && String.unsafe_get s (pos+5) = 'u' && String.unsafe_get s (pos+6) = 'l' && String.unsafe_get s (pos+7) = 't' && String.unsafe_get s (pos+8) = 'i' && String.unsafe_get s (pos+9) = 'p' && String.unsafe_get s (pos+10) = 'l' && String.unsafe_get s (pos+11) = 'i' && String.unsafe_get s (pos+12) = 'e' && String.unsafe_get s (pos+13) = 'r' then (
                  9
                )
                else (
                  -1
                )
              )
            | 19 -> (
                if String.unsafe_get s pos = 'f' && String.unsafe_get s (pos+1) = 'e' && String.unsafe_get s (pos+2) = 'e' && String.unsafe_get s (pos+3) = '_' && String.unsafe_get s (pos+4) = 'v' && String.unsafe_get s (pos+5) = 'o' && String.unsafe_get s (pos+6) = 'l' && String.unsafe_get s (pos+7) = 'u' && String.unsafe_get s (pos+8) = 'm' && String.unsafe_get s (pos+9) = 'e' && String.unsafe_get s (pos+10) = '_' && String.unsafe_get s (pos+11) = 'c' && String.unsafe_get s (pos+12) = 'u' && String.unsafe_get s (pos+13) = 'r' && String.unsafe_get s (pos+14) = 'r' && String.unsafe_get s (pos+15) = 'e' && String.unsafe_get s (pos+16) = 'n' && String.unsafe_get s (pos+17) = 'c' && String.unsafe_get s (pos+18) = 'y' then (
                  14
                )
                else (
                  -1
                )
              )
            | _ -> (
                -1
              )
      in
      let i = Yojson.Safe.map_ident p f lb in
      Atdgen_runtime.Oj_run.read_until_field_value p lb;
      (
        match i with
          | 0 ->
            if not (Yojson.Safe.read_null_if_possible p lb) then (
              field_altname := (
                (
                  Atdgen_runtime.Oj_run.read_string
                ) p lb
              );
            )
          | 1 ->
            if not (Yojson.Safe.read_null_if_possible p lb) then (
              field_wsname := (
                (
                  Atdgen_runtime.Oj_run.read_string
                ) p lb
              );
            )
          | 2 ->
            if not (Yojson.Safe.read_null_if_possible p lb) then (
              field_aclass_base := (
                (
                  Atdgen_runtime.Oj_run.read_string
                ) p lb
              );
            )
          | 3 ->
            if not (Yojson.Safe.read_null_if_possible p lb) then (
              field_base := (
                (
                  Atdgen_runtime.Oj_run.read_string
                ) p lb
              );
            )
          | 4 ->
            if not (Yojson.Safe.read_null_if_possible p lb) then (
              field_aclass_quote := (
                (
                  Atdgen_runtime.Oj_run.read_string
                ) p lb
              );
            )
          | 5 ->
            if not (Yojson.Safe.read_null_if_possible p lb) then (
              field_quote := (
                (
                  Atdgen_runtime.Oj_run.read_string
                ) p lb
              );
            )
          | 6 ->
            if not (Yojson.Safe.read_null_if_possible p lb) then (
              field_lot := (
                (
                  Atdgen_runtime.Oj_run.read_string
                ) p lb
              );
            )
          | 7 ->
            if not (Yojson.Safe.read_null_if_possible p lb) then (
              field_pair_decimals := (
                (
                  Atdgen_runtime.Oj_run.read_int
                ) p lb
              );
            )
          | 8 ->
            if not (Yojson.Safe.read_null_if_possible p lb) then (
              field_lot_decimals := (
                (
                  Atdgen_runtime.Oj_run.read_int
                ) p lb
              );
            )
          | 9 ->
            if not (Yojson.Safe.read_null_if_possible p lb) then (
              field_lot_multiplier := (
                (
                  Atdgen_runtime.Oj_run.read_int
                ) p lb
              );
            )
          | 10 ->
            if not (Yojson.Safe.read_null_if_possible p lb) then (
              field_leverage_buy := (
                (
                  read__6
                ) p lb
              );
            )
          | 11 ->
            if not (Yojson.Safe.read_null_if_possible p lb) then (
              field_leverage_sell := (
                (
                  read__6
                ) p lb
              );
            )
          | 12 ->
            if not (Yojson.Safe.read_null_if_possible p lb) then (
              field_fees := (
                (
                  read__7
                ) p lb
              );
            )
          | 13 ->
            if not (Yojson.Safe.read_null_if_possible p lb) then (
              field_fees_maker := (
                (
                  read__7
                ) p lb
              );
            )
          | 14 ->
            if not (Yojson.Safe.read_null_if_possible p lb) then (
              field_fee_volume_currency := (
                (
                  Atdgen_runtime.Oj_run.read_string
                ) p lb
              );
            )
          | 15 ->
            if not (Yojson.Safe.read_null_if_possible p lb) then (
              field_margin_call := (
                (
                  Atdgen_runtime.Oj_run.read_int
                ) p lb
              );
            )
          | 16 ->
            if not (Yojson.Safe.read_null_if_possible p lb) then (
              field_margin_stop := (
                (
                  Atdgen_runtime.Oj_run.read_int
                ) p lb
              );
            )
          | 17 ->
            if not (Yojson.Safe.read_null_if_possible p lb) then (
              field_ordermin := (
                Some (
                  (
                    Atdgen_runtime.Oj_run.read_string
                  ) p lb
                )
              );
            )
          | _ -> (
              Yojson.Safe.skip_json p lb
            )
      );
      while true do
        Yojson.Safe.read_space p lb;
        Yojson.Safe.read_object_sep p lb;
        Yojson.Safe.read_space p lb;
        let f =
          fun s pos len ->
            if pos < 0 || len < 0 || pos + len > String.length s then
              invalid_arg "out-of-bounds substring position or length";
            match len with
              | 3 -> (
                  if String.unsafe_get s pos = 'l' && String.unsafe_get s (pos+1) = 'o' && String.unsafe_get s (pos+2) = 't' then (
                    6
                  )
                  else (
                    -1
                  )
                )
              | 4 -> (
                  match String.unsafe_get s pos with
                    | 'b' -> (
                        if String.unsafe_get s (pos+1) = 'a' && String.unsafe_get s (pos+2) = 's' && String.unsafe_get s (pos+3) = 'e' then (
                          3
                        )
                        else (
                          -1
                        )
                      )
                    | 'f' -> (
                        if String.unsafe_get s (pos+1) = 'e' && String.unsafe_get s (pos+2) = 'e' && String.unsafe_get s (pos+3) = 's' then (
                          12
                        )
                        else (
                          -1
                        )
                      )
                    | _ -> (
                        -1
                      )
                )
              | 5 -> (
                  if String.unsafe_get s pos = 'q' && String.unsafe_get s (pos+1) = 'u' && String.unsafe_get s (pos+2) = 'o' && String.unsafe_get s (pos+3) = 't' && String.unsafe_get s (pos+4) = 'e' then (
                    5
                  )
                  else (
                    -1
                  )
                )
              | 6 -> (
                  if String.unsafe_get s pos = 'w' && String.unsafe_get s (pos+1) = 's' && String.unsafe_get s (pos+2) = 'n' && String.unsafe_get s (pos+3) = 'a' && String.unsafe_get s (pos+4) = 'm' && String.unsafe_get s (pos+5) = 'e' then (
                    1
                  )
                  else (
                    -1
                  )
                )
              | 7 -> (
                  if String.unsafe_get s pos = 'a' && String.unsafe_get s (pos+1) = 'l' && String.unsafe_get s (pos+2) = 't' && String.unsafe_get s (pos+3) = 'n' && String.unsafe_get s (pos+4) = 'a' && String.unsafe_get s (pos+5) = 'm' && String.unsafe_get s (pos+6) = 'e' then (
                    0
                  )
                  else (
                    -1
                  )
                )
              | 8 -> (
                  if String.unsafe_get s pos = 'o' && String.unsafe_get s (pos+1) = 'r' && String.unsafe_get s (pos+2) = 'd' && String.unsafe_get s (pos+3) = 'e' && String.unsafe_get s (pos+4) = 'r' && String.unsafe_get s (pos+5) = 'm' && String.unsafe_get s (pos+6) = 'i' && String.unsafe_get s (pos+7) = 'n' then (
                    17
                  )
                  else (
                    -1
                  )
                )
              | 10 -> (
                  if String.unsafe_get s pos = 'f' && String.unsafe_get s (pos+1) = 'e' && String.unsafe_get s (pos+2) = 'e' && String.unsafe_get s (pos+3) = 's' && String.unsafe_get s (pos+4) = '_' && String.unsafe_get s (pos+5) = 'm' && String.unsafe_get s (pos+6) = 'a' && String.unsafe_get s (pos+7) = 'k' && String.unsafe_get s (pos+8) = 'e' && String.unsafe_get s (pos+9) = 'r' then (
                    13
                  )
                  else (
                    -1
                  )
                )
              | 11 -> (
                  match String.unsafe_get s pos with
                    | 'a' -> (
                        if String.unsafe_get s (pos+1) = 'c' && String.unsafe_get s (pos+2) = 'l' && String.unsafe_get s (pos+3) = 'a' && String.unsafe_get s (pos+4) = 's' && String.unsafe_get s (pos+5) = 's' && String.unsafe_get s (pos+6) = '_' && String.unsafe_get s (pos+7) = 'b' && String.unsafe_get s (pos+8) = 'a' && String.unsafe_get s (pos+9) = 's' && String.unsafe_get s (pos+10) = 'e' then (
                          2
                        )
                        else (
                          -1
                        )
                      )
                    | 'm' -> (
                        if String.unsafe_get s (pos+1) = 'a' && String.unsafe_get s (pos+2) = 'r' && String.unsafe_get s (pos+3) = 'g' && String.unsafe_get s (pos+4) = 'i' && String.unsafe_get s (pos+5) = 'n' && String.unsafe_get s (pos+6) = '_' then (
                          match String.unsafe_get s (pos+7) with
                            | 'c' -> (
                                if String.unsafe_get s (pos+8) = 'a' && String.unsafe_get s (pos+9) = 'l' && String.unsafe_get s (pos+10) = 'l' then (
                                  15
                                )
                                else (
                                  -1
                                )
                              )
                            | 's' -> (
                                if String.unsafe_get s (pos+8) = 't' && String.unsafe_get s (pos+9) = 'o' && String.unsafe_get s (pos+10) = 'p' then (
                                  16
                                )
                                else (
                                  -1
                                )
                              )
                            | _ -> (
                                -1
                              )
                        )
                        else (
                          -1
                        )
                      )
                    | _ -> (
                        -1
                      )
                )
              | 12 -> (
                  match String.unsafe_get s pos with
                    | 'a' -> (
                        if String.unsafe_get s (pos+1) = 'c' && String.unsafe_get s (pos+2) = 'l' && String.unsafe_get s (pos+3) = 'a' && String.unsafe_get s (pos+4) = 's' && String.unsafe_get s (pos+5) = 's' && String.unsafe_get s (pos+6) = '_' && String.unsafe_get s (pos+7) = 'q' && String.unsafe_get s (pos+8) = 'u' && String.unsafe_get s (pos+9) = 'o' && String.unsafe_get s (pos+10) = 't' && String.unsafe_get s (pos+11) = 'e' then (
                          4
                        )
                        else (
                          -1
                        )
                      )
                    | 'l' -> (
                        match String.unsafe_get s (pos+1) with
                          | 'e' -> (
                              if String.unsafe_get s (pos+2) = 'v' && String.unsafe_get s (pos+3) = 'e' && String.unsafe_get s (pos+4) = 'r' && String.unsafe_get s (pos+5) = 'a' && String.unsafe_get s (pos+6) = 'g' && String.unsafe_get s (pos+7) = 'e' && String.unsafe_get s (pos+8) = '_' && String.unsafe_get s (pos+9) = 'b' && String.unsafe_get s (pos+10) = 'u' && String.unsafe_get s (pos+11) = 'y' then (
                                10
                              )
                              else (
                                -1
                              )
                            )
                          | 'o' -> (
                              if String.unsafe_get s (pos+2) = 't' && String.unsafe_get s (pos+3) = '_' && String.unsafe_get s (pos+4) = 'd' && String.unsafe_get s (pos+5) = 'e' && String.unsafe_get s (pos+6) = 'c' && String.unsafe_get s (pos+7) = 'i' && String.unsafe_get s (pos+8) = 'm' && String.unsafe_get s (pos+9) = 'a' && String.unsafe_get s (pos+10) = 'l' && String.unsafe_get s (pos+11) = 's' then (
                                8
                              )
                              else (
                                -1
                              )
                            )
                          | _ -> (
                              -1
                            )
                      )
                    | _ -> (
                        -1
                      )
                )
              | 13 -> (
                  match String.unsafe_get s pos with
                    | 'l' -> (
                        if String.unsafe_get s (pos+1) = 'e' && String.unsafe_get s (pos+2) = 'v' && String.unsafe_get s (pos+3) = 'e' && String.unsafe_get s (pos+4) = 'r' && String.unsafe_get s (pos+5) = 'a' && String.unsafe_get s (pos+6) = 'g' && String.unsafe_get s (pos+7) = 'e' && String.unsafe_get s (pos+8) = '_' && String.unsafe_get s (pos+9) = 's' && String.unsafe_get s (pos+10) = 'e' && String.unsafe_get s (pos+11) = 'l' && String.unsafe_get s (pos+12) = 'l' then (
                          11
                        )
                        else (
                          -1
                        )
                      )
                    | 'p' -> (
                        if String.unsafe_get s (pos+1) = 'a' && String.unsafe_get s (pos+2) = 'i' && String.unsafe_get s (pos+3) = 'r' && String.unsafe_get s (pos+4) = '_' && String.unsafe_get s (pos+5) = 'd' && String.unsafe_get s (pos+6) = 'e' && String.unsafe_get s (pos+7) = 'c' && String.unsafe_get s (pos+8) = 'i' && String.unsafe_get s (pos+9) = 'm' && String.unsafe_get s (pos+10) = 'a' && String.unsafe_get s (pos+11) = 'l' && String.unsafe_get s (pos+12) = 's' then (
                          7
                        )
                        else (
                          -1
                        )
                      )
                    | _ -> (
                        -1
                      )
                )
              | 14 -> (
                  if String.unsafe_get s pos = 'l' && String.unsafe_get s (pos+1) = 'o' && String.unsafe_get s (pos+2) = 't' && String.unsafe_get s (pos+3) = '_' && String.unsafe_get s (pos+4) = 'm' && String.unsafe_get s (pos+5) = 'u' && String.unsafe_get s (pos+6) = 'l' && String.unsafe_get s (pos+7) = 't' && String.unsafe_get s (pos+8) = 'i' && String.unsafe_get s (pos+9) = 'p' && String.unsafe_get s (pos+10) = 'l' && String.unsafe_get s (pos+11) = 'i' && String.unsafe_get s (pos+12) = 'e' && String.unsafe_get s (pos+13) = 'r' then (
                    9
                  )
                  else (
                    -1
                  )
                )
              | 19 -> (
                  if String.unsafe_get s pos = 'f' && String.unsafe_get s (pos+1) = 'e' && String.unsafe_get s (pos+2) = 'e' && String.unsafe_get s (pos+3) = '_' && String.unsafe_get s (pos+4) = 'v' && String.unsafe_get s (pos+5) = 'o' && String.unsafe_get s (pos+6) = 'l' && String.unsafe_get s (pos+7) = 'u' && String.unsafe_get s (pos+8) = 'm' && String.unsafe_get s (pos+9) = 'e' && String.unsafe_get s (pos+10) = '_' && String.unsafe_get s (pos+11) = 'c' && String.unsafe_get s (pos+12) = 'u' && String.unsafe_get s (pos+13) = 'r' && String.unsafe_get s (pos+14) = 'r' && String.unsafe_get s (pos+15) = 'e' && String.unsafe_get s (pos+16) = 'n' && String.unsafe_get s (pos+17) = 'c' && String.unsafe_get s (pos+18) = 'y' then (
                    14
                  )
                  else (
                    -1
                  )
                )
              | _ -> (
                  -1
                )
        in
        let i = Yojson.Safe.map_ident p f lb in
        Atdgen_runtime.Oj_run.read_until_field_value p lb;
        (
          match i with
            | 0 ->
              if not (Yojson.Safe.read_null_if_possible p lb) then (
                field_altname := (
                  (
                    Atdgen_runtime.Oj_run.read_string
                  ) p lb
                );
              )
            | 1 ->
              if not (Yojson.Safe.read_null_if_possible p lb) then (
                field_wsname := (
                  (
                    Atdgen_runtime.Oj_run.read_string
                  ) p lb
                );
              )
            | 2 ->
              if not (Yojson.Safe.read_null_if_possible p lb) then (
                field_aclass_base := (
                  (
                    Atdgen_runtime.Oj_run.read_string
                  ) p lb
                );
              )
            | 3 ->
              if not (Yojson.Safe.read_null_if_possible p lb) then (
                field_base := (
                  (
                    Atdgen_runtime.Oj_run.read_string
                  ) p lb
                );
              )
            | 4 ->
              if not (Yojson.Safe.read_null_if_possible p lb) then (
                field_aclass_quote := (
                  (
                    Atdgen_runtime.Oj_run.read_string
                  ) p lb
                );
              )
            | 5 ->
              if not (Yojson.Safe.read_null_if_possible p lb) then (
                field_quote := (
                  (
                    Atdgen_runtime.Oj_run.read_string
                  ) p lb
                );
              )
            | 6 ->
              if not (Yojson.Safe.read_null_if_possible p lb) then (
                field_lot := (
                  (
                    Atdgen_runtime.Oj_run.read_string
                  ) p lb
                );
              )
            | 7 ->
              if not (Yojson.Safe.read_null_if_possible p lb) then (
                field_pair_decimals := (
                  (
                    Atdgen_runtime.Oj_run.read_int
                  ) p lb
                );
              )
            | 8 ->
              if not (Yojson.Safe.read_null_if_possible p lb) then (
                field_lot_decimals := (
                  (
                    Atdgen_runtime.Oj_run.read_int
                  ) p lb
                );
              )
            | 9 ->
              if not (Yojson.Safe.read_null_if_possible p lb) then (
                field_lot_multiplier := (
                  (
                    Atdgen_runtime.Oj_run.read_int
                  ) p lb
                );
              )
            | 10 ->
              if not (Yojson.Safe.read_null_if_possible p lb) then (
                field_leverage_buy := (
                  (
                    read__6
                  ) p lb
                );
              )
            | 11 ->
              if not (Yojson.Safe.read_null_if_possible p lb) then (
                field_leverage_sell := (
                  (
                    read__6
                  ) p lb
                );
              )
            | 12 ->
              if not (Yojson.Safe.read_null_if_possible p lb) then (
                field_fees := (
                  (
                    read__7
                  ) p lb
                );
              )
            | 13 ->
              if not (Yojson.Safe.read_null_if_possible p lb) then (
                field_fees_maker := (
                  (
                    read__7
                  ) p lb
                );
              )
            | 14 ->
              if not (Yojson.Safe.read_null_if_possible p lb) then (
                field_fee_volume_currency := (
                  (
                    Atdgen_runtime.Oj_run.read_string
                  ) p lb
                );
              )
            | 15 ->
              if not (Yojson.Safe.read_null_if_possible p lb) then (
                field_margin_call := (
                  (
                    Atdgen_runtime.Oj_run.read_int
                  ) p lb
                );
              )
            | 16 ->
              if not (Yojson.Safe.read_null_if_possible p lb) then (
                field_margin_stop := (
                  (
                    Atdgen_runtime.Oj_run.read_int
                  ) p lb
                );
              )
            | 17 ->
              if not (Yojson.Safe.read_null_if_possible p lb) then (
                field_ordermin := (
                  Some (
                    (
                      Atdgen_runtime.Oj_run.read_string
                    ) p lb
                  )
                );
              )
            | _ -> (
                Yojson.Safe.skip_json p lb
              )
        );
      done;
      assert false;
    with Yojson.End_of_object -> (
        (
          {
            altname = !field_altname;
            wsname = !field_wsname;
            aclass_base = !field_aclass_base;
            base = !field_base;
            aclass_quote = !field_aclass_quote;
            quote = !field_quote;
            lot = !field_lot;
            pair_decimals = !field_pair_decimals;
            lot_decimals = !field_lot_decimals;
            lot_multiplier = !field_lot_multiplier;
            leverage_buy = !field_leverage_buy;
            leverage_sell = !field_leverage_sell;
            fees = !field_fees;
            fees_maker = !field_fees_maker;
            fee_volume_currency = !field_fee_volume_currency;
            margin_call = !field_margin_call;
            margin_stop = !field_margin_stop;
            ordermin = !field_ordermin;
          }
         : symbol_item)
      )
)
let symbol_item_of_string s =
  read_symbol_item (Yojson.Safe.init_lexer ()) (Lexing.from_string s)
let write_ohlc_item = (
  fun ob x ->
    Bi_outbuf.add_char ob '(';
    (let x, _, _, _, _, _, _, _ = x in
    (
      Yojson.Safe.write_int
    ) ob x
    );
    Bi_outbuf.add_char ob ',';
    (let _, x, _, _, _, _, _, _ = x in
    (
      write_strnum
    ) ob x
    );
    Bi_outbuf.add_char ob ',';
    (let _, _, x, _, _, _, _, _ = x in
    (
      write_strnum
    ) ob x
    );
    Bi_outbuf.add_char ob ',';
    (let _, _, _, x, _, _, _, _ = x in
    (
      write_strnum
    ) ob x
    );
    Bi_outbuf.add_char ob ',';
    (let _, _, _, _, x, _, _, _ = x in
    (
      write_strnum
    ) ob x
    );
    Bi_outbuf.add_char ob ',';
    (let _, _, _, _, _, x, _, _ = x in
    (
      write_strnum
    ) ob x
    );
    Bi_outbuf.add_char ob ',';
    (let _, _, _, _, _, _, x, _ = x in
    (
      write_strnum
    ) ob x
    );
    Bi_outbuf.add_char ob ',';
    (let _, _, _, _, _, _, _, x = x in
    (
      Yojson.Safe.write_int
    ) ob x
    );
    Bi_outbuf.add_char ob ')';
)
let string_of_ohlc_item ?(len = 1024) x =
  let ob = Bi_outbuf.create len in
  write_ohlc_item ob x;
  Bi_outbuf.contents ob
let read_ohlc_item = (
  fun p lb ->
    Yojson.Safe.read_space p lb;
    let std_tuple = Yojson.Safe.start_any_tuple p lb in
    let len = ref 0 in
    let end_of_tuple = ref false in
    (try
      let x0 =
        let x =
          (
            Atdgen_runtime.Oj_run.read_int
          ) p lb
        in
        incr len;
        Yojson.Safe.read_space p lb;
        Yojson.Safe.read_tuple_sep2 p std_tuple lb;
        x
      in
      let x1 =
        let x =
          (
            read_strnum
          ) p lb
        in
        incr len;
        Yojson.Safe.read_space p lb;
        Yojson.Safe.read_tuple_sep2 p std_tuple lb;
        x
      in
      let x2 =
        let x =
          (
            read_strnum
          ) p lb
        in
        incr len;
        Yojson.Safe.read_space p lb;
        Yojson.Safe.read_tuple_sep2 p std_tuple lb;
        x
      in
      let x3 =
        let x =
          (
            read_strnum
          ) p lb
        in
        incr len;
        Yojson.Safe.read_space p lb;
        Yojson.Safe.read_tuple_sep2 p std_tuple lb;
        x
      in
      let x4 =
        let x =
          (
            read_strnum
          ) p lb
        in
        incr len;
        Yojson.Safe.read_space p lb;
        Yojson.Safe.read_tuple_sep2 p std_tuple lb;
        x
      in
      let x5 =
        let x =
          (
            read_strnum
          ) p lb
        in
        incr len;
        Yojson.Safe.read_space p lb;
        Yojson.Safe.read_tuple_sep2 p std_tuple lb;
        x
      in
      let x6 =
        let x =
          (
            read_strnum
          ) p lb
        in
        incr len;
        Yojson.Safe.read_space p lb;
        Yojson.Safe.read_tuple_sep2 p std_tuple lb;
        x
      in
      let x7 =
        let x =
          (
            Atdgen_runtime.Oj_run.read_int
          ) p lb
        in
        incr len;
        (try
          Yojson.Safe.read_space p lb;
          Yojson.Safe.read_tuple_sep2 p std_tuple lb;
        with Yojson.End_of_tuple -> end_of_tuple := true);
        x
      in
      if not !end_of_tuple then (
        try
          while true do
            Yojson.Safe.skip_json p lb;
            Yojson.Safe.read_space p lb;
            Yojson.Safe.read_tuple_sep2 p std_tuple lb;
          done
        with Yojson.End_of_tuple -> ()
      );
      (x0, x1, x2, x3, x4, x5, x6, x7)
    with Yojson.End_of_tuple ->
      Atdgen_runtime.Oj_run.missing_tuple_fields p !len [ 0; 1; 2; 3; 4; 5; 6; 7 ]);
)
let ohlc_item_of_string s =
  read_ohlc_item (Yojson.Safe.init_lexer ()) (Lexing.from_string s)
let write__5 = (
  Atdgen_runtime.Oj_run.write_list (
    write_trade_item
  )
)
let string_of__5 ?(len = 1024) x =
  let ob = Bi_outbuf.create len in
  write__5 ob x;
  Bi_outbuf.contents ob
let read__5 = (
  Atdgen_runtime.Oj_run.read_list (
    read_trade_item
  )
)
let _5_of_string s =
  read__5 (Yojson.Safe.init_lexer ()) (Lexing.from_string s)
let write_expected_trades = (
  write__5
)
let string_of_expected_trades ?(len = 1024) x =
  let ob = Bi_outbuf.create len in
  write_expected_trades ob x;
  Bi_outbuf.contents ob
let read_expected_trades = (
  read__5
)
let expected_trades_of_string s =
  read_expected_trades (Yojson.Safe.init_lexer ()) (Lexing.from_string s)
let write__9 = (
  Atdgen_runtime.Oj_run.write_assoc_list (
    Yojson.Safe.write_string
  ) (
    write_symbol_item
  )
)
let string_of__9 ?(len = 1024) x =
  let ob = Bi_outbuf.create len in
  write__9 ob x;
  Bi_outbuf.contents ob
let read__9 = (
  Atdgen_runtime.Oj_run.read_assoc_list (
    Atdgen_runtime.Oj_run.read_string
  ) (
    read_symbol_item
  )
)
let _9_of_string s =
  read__9 (Yojson.Safe.init_lexer ()) (Lexing.from_string s)
let write_expected_symbols = (
  write__9
)
let string_of_expected_symbols ?(len = 1024) x =
  let ob = Bi_outbuf.create len in
  write_expected_symbols ob x;
  Bi_outbuf.contents ob
let read_expected_symbols = (
  read__9
)
let expected_symbols_of_string s =
  read_expected_symbols (Yojson.Safe.init_lexer ()) (Lexing.from_string s)
let write_bid_item = (
  fun ob x ->
    Bi_outbuf.add_char ob '(';
    (let x, _, _ = x in
    (
      write_strnum
    ) ob x
    );
    Bi_outbuf.add_char ob ',';
    (let _, x, _ = x in
    (
      write_strnum
    ) ob x
    );
    Bi_outbuf.add_char ob ',';
    (let _, _, x = x in
    (
      Yojson.Safe.write_int
    ) ob x
    );
    Bi_outbuf.add_char ob ')';
)
let string_of_bid_item ?(len = 1024) x =
  let ob = Bi_outbuf.create len in
  write_bid_item ob x;
  Bi_outbuf.contents ob
let read_bid_item = (
  fun p lb ->
    Yojson.Safe.read_space p lb;
    let std_tuple = Yojson.Safe.start_any_tuple p lb in
    let len = ref 0 in
    let end_of_tuple = ref false in
    (try
      let x0 =
        let x =
          (
            read_strnum
          ) p lb
        in
        incr len;
        Yojson.Safe.read_space p lb;
        Yojson.Safe.read_tuple_sep2 p std_tuple lb;
        x
      in
      let x1 =
        let x =
          (
            read_strnum
          ) p lb
        in
        incr len;
        Yojson.Safe.read_space p lb;
        Yojson.Safe.read_tuple_sep2 p std_tuple lb;
        x
      in
      let x2 =
        let x =
          (
            Atdgen_runtime.Oj_run.read_int
          ) p lb
        in
        incr len;
        (try
          Yojson.Safe.read_space p lb;
          Yojson.Safe.read_tuple_sep2 p std_tuple lb;
        with Yojson.End_of_tuple -> end_of_tuple := true);
        x
      in
      if not !end_of_tuple then (
        try
          while true do
            Yojson.Safe.skip_json p lb;
            Yojson.Safe.read_space p lb;
            Yojson.Safe.read_tuple_sep2 p std_tuple lb;
          done
        with Yojson.End_of_tuple -> ()
      );
      (x0, x1, x2)
    with Yojson.End_of_tuple ->
      Atdgen_runtime.Oj_run.missing_tuple_fields p !len [ 0; 1; 2 ]);
)
let bid_item_of_string s =
  read_bid_item (Yojson.Safe.init_lexer ()) (Lexing.from_string s)
let write__4 = (
  Atdgen_runtime.Oj_run.write_list (
    write_bid_item
  )
)
let string_of__4 ?(len = 1024) x =
  let ob = Bi_outbuf.create len in
  write__4 ob x;
  Bi_outbuf.contents ob
let read__4 = (
  Atdgen_runtime.Oj_run.read_list (
    read_bid_item
  )
)
let _4_of_string s =
  read__4 (Yojson.Safe.init_lexer ()) (Lexing.from_string s)
let write_expected_bid_list = (
  write__4
)
let string_of_expected_bid_list ?(len = 1024) x =
  let ob = Bi_outbuf.create len in
  write_expected_bid_list ob x;
  Bi_outbuf.contents ob
let read_expected_bid_list = (
  read__4
)
let expected_bid_list_of_string s =
  read_expected_bid_list (Yojson.Safe.init_lexer ()) (Lexing.from_string s)
let write_ask_item = (
  fun ob x ->
    Bi_outbuf.add_char ob '(';
    (let x, _, _ = x in
    (
      write_strnum
    ) ob x
    );
    Bi_outbuf.add_char ob ',';
    (let _, x, _ = x in
    (
      write_strnum
    ) ob x
    );
    Bi_outbuf.add_char ob ',';
    (let _, _, x = x in
    (
      Yojson.Safe.write_int
    ) ob x
    );
    Bi_outbuf.add_char ob ')';
)
let string_of_ask_item ?(len = 1024) x =
  let ob = Bi_outbuf.create len in
  write_ask_item ob x;
  Bi_outbuf.contents ob
let read_ask_item = (
  fun p lb ->
    Yojson.Safe.read_space p lb;
    let std_tuple = Yojson.Safe.start_any_tuple p lb in
    let len = ref 0 in
    let end_of_tuple = ref false in
    (try
      let x0 =
        let x =
          (
            read_strnum
          ) p lb
        in
        incr len;
        Yojson.Safe.read_space p lb;
        Yojson.Safe.read_tuple_sep2 p std_tuple lb;
        x
      in
      let x1 =
        let x =
          (
            read_strnum
          ) p lb
        in
        incr len;
        Yojson.Safe.read_space p lb;
        Yojson.Safe.read_tuple_sep2 p std_tuple lb;
        x
      in
      let x2 =
        let x =
          (
            Atdgen_runtime.Oj_run.read_int
          ) p lb
        in
        incr len;
        (try
          Yojson.Safe.read_space p lb;
          Yojson.Safe.read_tuple_sep2 p std_tuple lb;
        with Yojson.End_of_tuple -> end_of_tuple := true);
        x
      in
      if not !end_of_tuple then (
        try
          while true do
            Yojson.Safe.skip_json p lb;
            Yojson.Safe.read_space p lb;
            Yojson.Safe.read_tuple_sep2 p std_tuple lb;
          done
        with Yojson.End_of_tuple -> ()
      );
      (x0, x1, x2)
    with Yojson.End_of_tuple ->
      Atdgen_runtime.Oj_run.missing_tuple_fields p !len [ 0; 1; 2 ]);
)
let ask_item_of_string s =
  read_ask_item (Yojson.Safe.init_lexer ()) (Lexing.from_string s)
let write__3 = (
  Atdgen_runtime.Oj_run.write_list (
    write_ask_item
  )
)
let string_of__3 ?(len = 1024) x =
  let ob = Bi_outbuf.create len in
  write__3 ob x;
  Bi_outbuf.contents ob
let read__3 = (
  Atdgen_runtime.Oj_run.read_list (
    read_ask_item
  )
)
let _3_of_string s =
  read__3 (Yojson.Safe.init_lexer ()) (Lexing.from_string s)
let write_expected_ask_list = (
  write__3
)
let string_of_expected_ask_list ?(len = 1024) x =
  let ob = Bi_outbuf.create len in
  write_expected_ask_list ob x;
  Bi_outbuf.contents ob
let read_expected_ask_list = (
  read__3
)
let expected_ask_list_of_string s =
  read_expected_ask_list (Yojson.Safe.init_lexer ()) (Lexing.from_string s)
let write_expected_orderbook : _ -> expected_orderbook -> _ = (
  fun ob (x : expected_orderbook) ->
    Bi_outbuf.add_char ob '{';
    let is_first = ref true in
    if !is_first then
      is_first := false
    else
      Bi_outbuf.add_char ob ',';
    Bi_outbuf.add_string ob "\"asks\":";
    (
      write_expected_ask_list
    )
      ob x.asks;
    if !is_first then
      is_first := false
    else
      Bi_outbuf.add_char ob ',';
    Bi_outbuf.add_string ob "\"bids\":";
    (
      write_expected_bid_list
    )
      ob x.bids;
    Bi_outbuf.add_char ob '}';
)
let string_of_expected_orderbook ?(len = 1024) x =
  let ob = Bi_outbuf.create len in
  write_expected_orderbook ob x;
  Bi_outbuf.contents ob
let read_expected_orderbook = (
  fun p lb ->
    Yojson.Safe.read_space p lb;
    Yojson.Safe.read_lcurl p lb;
    let field_asks = ref (None) in
    let field_bids = ref (None) in
    try
      Yojson.Safe.read_space p lb;
      Yojson.Safe.read_object_end lb;
      Yojson.Safe.read_space p lb;
      let f =
        fun s pos len ->
          if pos < 0 || len < 0 || pos + len > String.length s then
            invalid_arg "out-of-bounds substring position or length";
          if len = 4 then (
            match String.unsafe_get s pos with
              | 'a' -> (
                  if String.unsafe_get s (pos+1) = 's' && String.unsafe_get s (pos+2) = 'k' && String.unsafe_get s (pos+3) = 's' then (
                    0
                  )
                  else (
                    -1
                  )
                )
              | 'b' -> (
                  if String.unsafe_get s (pos+1) = 'i' && String.unsafe_get s (pos+2) = 'd' && String.unsafe_get s (pos+3) = 's' then (
                    1
                  )
                  else (
                    -1
                  )
                )
              | _ -> (
                  -1
                )
          )
          else (
            -1
          )
      in
      let i = Yojson.Safe.map_ident p f lb in
      Atdgen_runtime.Oj_run.read_until_field_value p lb;
      (
        match i with
          | 0 ->
            field_asks := (
              Some (
                (
                  read_expected_ask_list
                ) p lb
              )
            );
          | 1 ->
            field_bids := (
              Some (
                (
                  read_expected_bid_list
                ) p lb
              )
            );
          | _ -> (
              Yojson.Safe.skip_json p lb
            )
      );
      while true do
        Yojson.Safe.read_space p lb;
        Yojson.Safe.read_object_sep p lb;
        Yojson.Safe.read_space p lb;
        let f =
          fun s pos len ->
            if pos < 0 || len < 0 || pos + len > String.length s then
              invalid_arg "out-of-bounds substring position or length";
            if len = 4 then (
              match String.unsafe_get s pos with
                | 'a' -> (
                    if String.unsafe_get s (pos+1) = 's' && String.unsafe_get s (pos+2) = 'k' && String.unsafe_get s (pos+3) = 's' then (
                      0
                    )
                    else (
                      -1
                    )
                  )
                | 'b' -> (
                    if String.unsafe_get s (pos+1) = 'i' && String.unsafe_get s (pos+2) = 'd' && String.unsafe_get s (pos+3) = 's' then (
                      1
                    )
                    else (
                      -1
                    )
                  )
                | _ -> (
                    -1
                  )
            )
            else (
              -1
            )
        in
        let i = Yojson.Safe.map_ident p f lb in
        Atdgen_runtime.Oj_run.read_until_field_value p lb;
        (
          match i with
            | 0 ->
              field_asks := (
                Some (
                  (
                    read_expected_ask_list
                  ) p lb
                )
              );
            | 1 ->
              field_bids := (
                Some (
                  (
                    read_expected_bid_list
                  ) p lb
                )
              );
            | _ -> (
                Yojson.Safe.skip_json p lb
              )
        );
      done;
      assert false;
    with Yojson.End_of_object -> (
        (
          {
            asks = (match !field_asks with Some x -> x | None -> Atdgen_runtime.Oj_run.missing_field p "asks");
            bids = (match !field_bids with Some x -> x | None -> Atdgen_runtime.Oj_run.missing_field p "bids");
          }
         : expected_orderbook)
      )
)
let expected_orderbook_of_string s =
  read_expected_orderbook (Yojson.Safe.init_lexer ()) (Lexing.from_string s)
let write__2 = (
  Atdgen_runtime.Oj_run.write_list (
    write_ohlc_item
  )
)
let string_of__2 ?(len = 1024) x =
  let ob = Bi_outbuf.create len in
  write__2 ob x;
  Bi_outbuf.contents ob
let read__2 = (
  Atdgen_runtime.Oj_run.read_list (
    read_ohlc_item
  )
)
let _2_of_string s =
  read__2 (Yojson.Safe.init_lexer ()) (Lexing.from_string s)
let write_expected_ohlc = (
  write__2
)
let string_of_expected_ohlc ?(len = 1024) x =
  let ob = Bi_outbuf.create len in
  write_expected_ohlc ob x;
  Bi_outbuf.contents ob
let read_expected_ohlc = (
  read__2
)
let expected_ohlc_of_string s =
  read_expected_ohlc (Yojson.Safe.init_lexer ()) (Lexing.from_string s)
let write_expected_instrument : _ -> expected_instrument -> _ = (
  fun ob (x : expected_instrument) ->
    Bi_outbuf.add_char ob '{';
    let is_first = ref true in
    if !is_first then
      is_first := false
    else
      Bi_outbuf.add_char ob ',';
    Bi_outbuf.add_string ob "\"a\":";
    (
      fun ob x ->
        Bi_outbuf.add_char ob '(';
        (let x, _, _ = x in
        (
          write_strnum
        ) ob x
        );
        Bi_outbuf.add_char ob ',';
        (let _, x, _ = x in
        (
          write_strnum
        ) ob x
        );
        Bi_outbuf.add_char ob ',';
        (let _, _, x = x in
        (
          write_strnum
        ) ob x
        );
        Bi_outbuf.add_char ob ')';
    )
      ob x.ask;
    if !is_first then
      is_first := false
    else
      Bi_outbuf.add_char ob ',';
    Bi_outbuf.add_string ob "\"b\":";
    (
      fun ob x ->
        Bi_outbuf.add_char ob '(';
        (let x, _, _ = x in
        (
          write_strnum
        ) ob x
        );
        Bi_outbuf.add_char ob ',';
        (let _, x, _ = x in
        (
          write_strnum
        ) ob x
        );
        Bi_outbuf.add_char ob ',';
        (let _, _, x = x in
        (
          write_strnum
        ) ob x
        );
        Bi_outbuf.add_char ob ')';
    )
      ob x.bid;
    if !is_first then
      is_first := false
    else
      Bi_outbuf.add_char ob ',';
    Bi_outbuf.add_string ob "\"c\":";
    (
      fun ob x ->
        Bi_outbuf.add_char ob '(';
        (let x, _ = x in
        (
          write_strnum
        ) ob x
        );
        Bi_outbuf.add_char ob ',';
        (let _, x = x in
        (
          write_strnum
        ) ob x
        );
        Bi_outbuf.add_char ob ')';
    )
      ob x.last;
    if !is_first then
      is_first := false
    else
      Bi_outbuf.add_char ob ',';
    Bi_outbuf.add_string ob "\"v\":";
    (
      fun ob x ->
        Bi_outbuf.add_char ob '(';
        (let x, _ = x in
        (
          write_strnum
        ) ob x
        );
        Bi_outbuf.add_char ob ',';
        (let _, x = x in
        (
          write_strnum
        ) ob x
        );
        Bi_outbuf.add_char ob ')';
    )
      ob x.vol;
    if !is_first then
      is_first := false
    else
      Bi_outbuf.add_char ob ',';
    Bi_outbuf.add_string ob "\"p\":";
    (
      fun ob x ->
        Bi_outbuf.add_char ob '(';
        (let x, _ = x in
        (
          write_strnum
        ) ob x
        );
        Bi_outbuf.add_char ob ',';
        (let _, x = x in
        (
          write_strnum
        ) ob x
        );
        Bi_outbuf.add_char ob ')';
    )
      ob x.vwap;
    if !is_first then
      is_first := false
    else
      Bi_outbuf.add_char ob ',';
    Bi_outbuf.add_string ob "\"t\":";
    (
      fun ob x ->
        Bi_outbuf.add_char ob '(';
        (let x, _ = x in
        (
          Yojson.Safe.write_int
        ) ob x
        );
        Bi_outbuf.add_char ob ',';
        (let _, x = x in
        (
          Yojson.Safe.write_int
        ) ob x
        );
        Bi_outbuf.add_char ob ')';
    )
      ob x.trades;
    if !is_first then
      is_first := false
    else
      Bi_outbuf.add_char ob ',';
    Bi_outbuf.add_string ob "\"l\":";
    (
      fun ob x ->
        Bi_outbuf.add_char ob '(';
        (let x, _ = x in
        (
          write_strnum
        ) ob x
        );
        Bi_outbuf.add_char ob ',';
        (let _, x = x in
        (
          write_strnum
        ) ob x
        );
        Bi_outbuf.add_char ob ')';
    )
      ob x.low;
    if !is_first then
      is_first := false
    else
      Bi_outbuf.add_char ob ',';
    Bi_outbuf.add_string ob "\"h\":";
    (
      fun ob x ->
        Bi_outbuf.add_char ob '(';
        (let x, _ = x in
        (
          write_strnum
        ) ob x
        );
        Bi_outbuf.add_char ob ',';
        (let _, x = x in
        (
          write_strnum
        ) ob x
        );
        Bi_outbuf.add_char ob ')';
    )
      ob x.high;
    if !is_first then
      is_first := false
    else
      Bi_outbuf.add_char ob ',';
    Bi_outbuf.add_string ob "\"o\":";
    (
      write_strnum
    )
      ob x.o;
    Bi_outbuf.add_char ob '}';
)
let string_of_expected_instrument ?(len = 1024) x =
  let ob = Bi_outbuf.create len in
  write_expected_instrument ob x;
  Bi_outbuf.contents ob
let read_expected_instrument = (
  fun p lb ->
    Yojson.Safe.read_space p lb;
    Yojson.Safe.read_lcurl p lb;
    let field_ask = ref (None) in
    let field_bid = ref (None) in
    let field_last = ref (None) in
    let field_vol = ref (None) in
    let field_vwap = ref (None) in
    let field_trades = ref (None) in
    let field_low = ref (None) in
    let field_high = ref (None) in
    let field_o = ref (None) in
    try
      Yojson.Safe.read_space p lb;
      Yojson.Safe.read_object_end lb;
      Yojson.Safe.read_space p lb;
      let f =
        fun s pos len ->
          if pos < 0 || len < 0 || pos + len > String.length s then
            invalid_arg "out-of-bounds substring position or length";
          if len = 1 then (
            match String.unsafe_get s pos with
              | 'a' -> (
                  0
                )
              | 'b' -> (
                  1
                )
              | 'c' -> (
                  2
                )
              | 'h' -> (
                  7
                )
              | 'l' -> (
                  6
                )
              | 'o' -> (
                  8
                )
              | 'p' -> (
                  4
                )
              | 't' -> (
                  5
                )
              | 'v' -> (
                  3
                )
              | _ -> (
                  -1
                )
          )
          else (
            -1
          )
      in
      let i = Yojson.Safe.map_ident p f lb in
      Atdgen_runtime.Oj_run.read_until_field_value p lb;
      (
        match i with
          | 0 ->
            field_ask := (
              Some (
                (
                  fun p lb ->
                    Yojson.Safe.read_space p lb;
                    let std_tuple = Yojson.Safe.start_any_tuple p lb in
                    let len = ref 0 in
                    let end_of_tuple = ref false in
                    (try
                      let x0 =
                        let x =
                          (
                            read_strnum
                          ) p lb
                        in
                        incr len;
                        Yojson.Safe.read_space p lb;
                        Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                        x
                      in
                      let x1 =
                        let x =
                          (
                            read_strnum
                          ) p lb
                        in
                        incr len;
                        Yojson.Safe.read_space p lb;
                        Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                        x
                      in
                      let x2 =
                        let x =
                          (
                            read_strnum
                          ) p lb
                        in
                        incr len;
                        (try
                          Yojson.Safe.read_space p lb;
                          Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                        with Yojson.End_of_tuple -> end_of_tuple := true);
                        x
                      in
                      if not !end_of_tuple then (
                        try
                          while true do
                            Yojson.Safe.skip_json p lb;
                            Yojson.Safe.read_space p lb;
                            Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                          done
                        with Yojson.End_of_tuple -> ()
                      );
                      (x0, x1, x2)
                    with Yojson.End_of_tuple ->
                      Atdgen_runtime.Oj_run.missing_tuple_fields p !len [ 0; 1; 2 ]);
                ) p lb
              )
            );
          | 1 ->
            field_bid := (
              Some (
                (
                  fun p lb ->
                    Yojson.Safe.read_space p lb;
                    let std_tuple = Yojson.Safe.start_any_tuple p lb in
                    let len = ref 0 in
                    let end_of_tuple = ref false in
                    (try
                      let x0 =
                        let x =
                          (
                            read_strnum
                          ) p lb
                        in
                        incr len;
                        Yojson.Safe.read_space p lb;
                        Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                        x
                      in
                      let x1 =
                        let x =
                          (
                            read_strnum
                          ) p lb
                        in
                        incr len;
                        Yojson.Safe.read_space p lb;
                        Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                        x
                      in
                      let x2 =
                        let x =
                          (
                            read_strnum
                          ) p lb
                        in
                        incr len;
                        (try
                          Yojson.Safe.read_space p lb;
                          Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                        with Yojson.End_of_tuple -> end_of_tuple := true);
                        x
                      in
                      if not !end_of_tuple then (
                        try
                          while true do
                            Yojson.Safe.skip_json p lb;
                            Yojson.Safe.read_space p lb;
                            Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                          done
                        with Yojson.End_of_tuple -> ()
                      );
                      (x0, x1, x2)
                    with Yojson.End_of_tuple ->
                      Atdgen_runtime.Oj_run.missing_tuple_fields p !len [ 0; 1; 2 ]);
                ) p lb
              )
            );
          | 2 ->
            field_last := (
              Some (
                (
                  fun p lb ->
                    Yojson.Safe.read_space p lb;
                    let std_tuple = Yojson.Safe.start_any_tuple p lb in
                    let len = ref 0 in
                    let end_of_tuple = ref false in
                    (try
                      let x0 =
                        let x =
                          (
                            read_strnum
                          ) p lb
                        in
                        incr len;
                        Yojson.Safe.read_space p lb;
                        Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                        x
                      in
                      let x1 =
                        let x =
                          (
                            read_strnum
                          ) p lb
                        in
                        incr len;
                        (try
                          Yojson.Safe.read_space p lb;
                          Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                        with Yojson.End_of_tuple -> end_of_tuple := true);
                        x
                      in
                      if not !end_of_tuple then (
                        try
                          while true do
                            Yojson.Safe.skip_json p lb;
                            Yojson.Safe.read_space p lb;
                            Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                          done
                        with Yojson.End_of_tuple -> ()
                      );
                      (x0, x1)
                    with Yojson.End_of_tuple ->
                      Atdgen_runtime.Oj_run.missing_tuple_fields p !len [ 0; 1 ]);
                ) p lb
              )
            );
          | 3 ->
            field_vol := (
              Some (
                (
                  fun p lb ->
                    Yojson.Safe.read_space p lb;
                    let std_tuple = Yojson.Safe.start_any_tuple p lb in
                    let len = ref 0 in
                    let end_of_tuple = ref false in
                    (try
                      let x0 =
                        let x =
                          (
                            read_strnum
                          ) p lb
                        in
                        incr len;
                        Yojson.Safe.read_space p lb;
                        Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                        x
                      in
                      let x1 =
                        let x =
                          (
                            read_strnum
                          ) p lb
                        in
                        incr len;
                        (try
                          Yojson.Safe.read_space p lb;
                          Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                        with Yojson.End_of_tuple -> end_of_tuple := true);
                        x
                      in
                      if not !end_of_tuple then (
                        try
                          while true do
                            Yojson.Safe.skip_json p lb;
                            Yojson.Safe.read_space p lb;
                            Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                          done
                        with Yojson.End_of_tuple -> ()
                      );
                      (x0, x1)
                    with Yojson.End_of_tuple ->
                      Atdgen_runtime.Oj_run.missing_tuple_fields p !len [ 0; 1 ]);
                ) p lb
              )
            );
          | 4 ->
            field_vwap := (
              Some (
                (
                  fun p lb ->
                    Yojson.Safe.read_space p lb;
                    let std_tuple = Yojson.Safe.start_any_tuple p lb in
                    let len = ref 0 in
                    let end_of_tuple = ref false in
                    (try
                      let x0 =
                        let x =
                          (
                            read_strnum
                          ) p lb
                        in
                        incr len;
                        Yojson.Safe.read_space p lb;
                        Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                        x
                      in
                      let x1 =
                        let x =
                          (
                            read_strnum
                          ) p lb
                        in
                        incr len;
                        (try
                          Yojson.Safe.read_space p lb;
                          Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                        with Yojson.End_of_tuple -> end_of_tuple := true);
                        x
                      in
                      if not !end_of_tuple then (
                        try
                          while true do
                            Yojson.Safe.skip_json p lb;
                            Yojson.Safe.read_space p lb;
                            Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                          done
                        with Yojson.End_of_tuple -> ()
                      );
                      (x0, x1)
                    with Yojson.End_of_tuple ->
                      Atdgen_runtime.Oj_run.missing_tuple_fields p !len [ 0; 1 ]);
                ) p lb
              )
            );
          | 5 ->
            field_trades := (
              Some (
                (
                  fun p lb ->
                    Yojson.Safe.read_space p lb;
                    let std_tuple = Yojson.Safe.start_any_tuple p lb in
                    let len = ref 0 in
                    let end_of_tuple = ref false in
                    (try
                      let x0 =
                        let x =
                          (
                            Atdgen_runtime.Oj_run.read_int
                          ) p lb
                        in
                        incr len;
                        Yojson.Safe.read_space p lb;
                        Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                        x
                      in
                      let x1 =
                        let x =
                          (
                            Atdgen_runtime.Oj_run.read_int
                          ) p lb
                        in
                        incr len;
                        (try
                          Yojson.Safe.read_space p lb;
                          Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                        with Yojson.End_of_tuple -> end_of_tuple := true);
                        x
                      in
                      if not !end_of_tuple then (
                        try
                          while true do
                            Yojson.Safe.skip_json p lb;
                            Yojson.Safe.read_space p lb;
                            Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                          done
                        with Yojson.End_of_tuple -> ()
                      );
                      (x0, x1)
                    with Yojson.End_of_tuple ->
                      Atdgen_runtime.Oj_run.missing_tuple_fields p !len [ 0; 1 ]);
                ) p lb
              )
            );
          | 6 ->
            field_low := (
              Some (
                (
                  fun p lb ->
                    Yojson.Safe.read_space p lb;
                    let std_tuple = Yojson.Safe.start_any_tuple p lb in
                    let len = ref 0 in
                    let end_of_tuple = ref false in
                    (try
                      let x0 =
                        let x =
                          (
                            read_strnum
                          ) p lb
                        in
                        incr len;
                        Yojson.Safe.read_space p lb;
                        Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                        x
                      in
                      let x1 =
                        let x =
                          (
                            read_strnum
                          ) p lb
                        in
                        incr len;
                        (try
                          Yojson.Safe.read_space p lb;
                          Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                        with Yojson.End_of_tuple -> end_of_tuple := true);
                        x
                      in
                      if not !end_of_tuple then (
                        try
                          while true do
                            Yojson.Safe.skip_json p lb;
                            Yojson.Safe.read_space p lb;
                            Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                          done
                        with Yojson.End_of_tuple -> ()
                      );
                      (x0, x1)
                    with Yojson.End_of_tuple ->
                      Atdgen_runtime.Oj_run.missing_tuple_fields p !len [ 0; 1 ]);
                ) p lb
              )
            );
          | 7 ->
            field_high := (
              Some (
                (
                  fun p lb ->
                    Yojson.Safe.read_space p lb;
                    let std_tuple = Yojson.Safe.start_any_tuple p lb in
                    let len = ref 0 in
                    let end_of_tuple = ref false in
                    (try
                      let x0 =
                        let x =
                          (
                            read_strnum
                          ) p lb
                        in
                        incr len;
                        Yojson.Safe.read_space p lb;
                        Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                        x
                      in
                      let x1 =
                        let x =
                          (
                            read_strnum
                          ) p lb
                        in
                        incr len;
                        (try
                          Yojson.Safe.read_space p lb;
                          Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                        with Yojson.End_of_tuple -> end_of_tuple := true);
                        x
                      in
                      if not !end_of_tuple then (
                        try
                          while true do
                            Yojson.Safe.skip_json p lb;
                            Yojson.Safe.read_space p lb;
                            Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                          done
                        with Yojson.End_of_tuple -> ()
                      );
                      (x0, x1)
                    with Yojson.End_of_tuple ->
                      Atdgen_runtime.Oj_run.missing_tuple_fields p !len [ 0; 1 ]);
                ) p lb
              )
            );
          | 8 ->
            field_o := (
              Some (
                (
                  read_strnum
                ) p lb
              )
            );
          | _ -> (
              Yojson.Safe.skip_json p lb
            )
      );
      while true do
        Yojson.Safe.read_space p lb;
        Yojson.Safe.read_object_sep p lb;
        Yojson.Safe.read_space p lb;
        let f =
          fun s pos len ->
            if pos < 0 || len < 0 || pos + len > String.length s then
              invalid_arg "out-of-bounds substring position or length";
            if len = 1 then (
              match String.unsafe_get s pos with
                | 'a' -> (
                    0
                  )
                | 'b' -> (
                    1
                  )
                | 'c' -> (
                    2
                  )
                | 'h' -> (
                    7
                  )
                | 'l' -> (
                    6
                  )
                | 'o' -> (
                    8
                  )
                | 'p' -> (
                    4
                  )
                | 't' -> (
                    5
                  )
                | 'v' -> (
                    3
                  )
                | _ -> (
                    -1
                  )
            )
            else (
              -1
            )
        in
        let i = Yojson.Safe.map_ident p f lb in
        Atdgen_runtime.Oj_run.read_until_field_value p lb;
        (
          match i with
            | 0 ->
              field_ask := (
                Some (
                  (
                    fun p lb ->
                      Yojson.Safe.read_space p lb;
                      let std_tuple = Yojson.Safe.start_any_tuple p lb in
                      let len = ref 0 in
                      let end_of_tuple = ref false in
                      (try
                        let x0 =
                          let x =
                            (
                              read_strnum
                            ) p lb
                          in
                          incr len;
                          Yojson.Safe.read_space p lb;
                          Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                          x
                        in
                        let x1 =
                          let x =
                            (
                              read_strnum
                            ) p lb
                          in
                          incr len;
                          Yojson.Safe.read_space p lb;
                          Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                          x
                        in
                        let x2 =
                          let x =
                            (
                              read_strnum
                            ) p lb
                          in
                          incr len;
                          (try
                            Yojson.Safe.read_space p lb;
                            Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                          with Yojson.End_of_tuple -> end_of_tuple := true);
                          x
                        in
                        if not !end_of_tuple then (
                          try
                            while true do
                              Yojson.Safe.skip_json p lb;
                              Yojson.Safe.read_space p lb;
                              Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                            done
                          with Yojson.End_of_tuple -> ()
                        );
                        (x0, x1, x2)
                      with Yojson.End_of_tuple ->
                        Atdgen_runtime.Oj_run.missing_tuple_fields p !len [ 0; 1; 2 ]);
                  ) p lb
                )
              );
            | 1 ->
              field_bid := (
                Some (
                  (
                    fun p lb ->
                      Yojson.Safe.read_space p lb;
                      let std_tuple = Yojson.Safe.start_any_tuple p lb in
                      let len = ref 0 in
                      let end_of_tuple = ref false in
                      (try
                        let x0 =
                          let x =
                            (
                              read_strnum
                            ) p lb
                          in
                          incr len;
                          Yojson.Safe.read_space p lb;
                          Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                          x
                        in
                        let x1 =
                          let x =
                            (
                              read_strnum
                            ) p lb
                          in
                          incr len;
                          Yojson.Safe.read_space p lb;
                          Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                          x
                        in
                        let x2 =
                          let x =
                            (
                              read_strnum
                            ) p lb
                          in
                          incr len;
                          (try
                            Yojson.Safe.read_space p lb;
                            Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                          with Yojson.End_of_tuple -> end_of_tuple := true);
                          x
                        in
                        if not !end_of_tuple then (
                          try
                            while true do
                              Yojson.Safe.skip_json p lb;
                              Yojson.Safe.read_space p lb;
                              Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                            done
                          with Yojson.End_of_tuple -> ()
                        );
                        (x0, x1, x2)
                      with Yojson.End_of_tuple ->
                        Atdgen_runtime.Oj_run.missing_tuple_fields p !len [ 0; 1; 2 ]);
                  ) p lb
                )
              );
            | 2 ->
              field_last := (
                Some (
                  (
                    fun p lb ->
                      Yojson.Safe.read_space p lb;
                      let std_tuple = Yojson.Safe.start_any_tuple p lb in
                      let len = ref 0 in
                      let end_of_tuple = ref false in
                      (try
                        let x0 =
                          let x =
                            (
                              read_strnum
                            ) p lb
                          in
                          incr len;
                          Yojson.Safe.read_space p lb;
                          Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                          x
                        in
                        let x1 =
                          let x =
                            (
                              read_strnum
                            ) p lb
                          in
                          incr len;
                          (try
                            Yojson.Safe.read_space p lb;
                            Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                          with Yojson.End_of_tuple -> end_of_tuple := true);
                          x
                        in
                        if not !end_of_tuple then (
                          try
                            while true do
                              Yojson.Safe.skip_json p lb;
                              Yojson.Safe.read_space p lb;
                              Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                            done
                          with Yojson.End_of_tuple -> ()
                        );
                        (x0, x1)
                      with Yojson.End_of_tuple ->
                        Atdgen_runtime.Oj_run.missing_tuple_fields p !len [ 0; 1 ]);
                  ) p lb
                )
              );
            | 3 ->
              field_vol := (
                Some (
                  (
                    fun p lb ->
                      Yojson.Safe.read_space p lb;
                      let std_tuple = Yojson.Safe.start_any_tuple p lb in
                      let len = ref 0 in
                      let end_of_tuple = ref false in
                      (try
                        let x0 =
                          let x =
                            (
                              read_strnum
                            ) p lb
                          in
                          incr len;
                          Yojson.Safe.read_space p lb;
                          Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                          x
                        in
                        let x1 =
                          let x =
                            (
                              read_strnum
                            ) p lb
                          in
                          incr len;
                          (try
                            Yojson.Safe.read_space p lb;
                            Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                          with Yojson.End_of_tuple -> end_of_tuple := true);
                          x
                        in
                        if not !end_of_tuple then (
                          try
                            while true do
                              Yojson.Safe.skip_json p lb;
                              Yojson.Safe.read_space p lb;
                              Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                            done
                          with Yojson.End_of_tuple -> ()
                        );
                        (x0, x1)
                      with Yojson.End_of_tuple ->
                        Atdgen_runtime.Oj_run.missing_tuple_fields p !len [ 0; 1 ]);
                  ) p lb
                )
              );
            | 4 ->
              field_vwap := (
                Some (
                  (
                    fun p lb ->
                      Yojson.Safe.read_space p lb;
                      let std_tuple = Yojson.Safe.start_any_tuple p lb in
                      let len = ref 0 in
                      let end_of_tuple = ref false in
                      (try
                        let x0 =
                          let x =
                            (
                              read_strnum
                            ) p lb
                          in
                          incr len;
                          Yojson.Safe.read_space p lb;
                          Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                          x
                        in
                        let x1 =
                          let x =
                            (
                              read_strnum
                            ) p lb
                          in
                          incr len;
                          (try
                            Yojson.Safe.read_space p lb;
                            Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                          with Yojson.End_of_tuple -> end_of_tuple := true);
                          x
                        in
                        if not !end_of_tuple then (
                          try
                            while true do
                              Yojson.Safe.skip_json p lb;
                              Yojson.Safe.read_space p lb;
                              Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                            done
                          with Yojson.End_of_tuple -> ()
                        );
                        (x0, x1)
                      with Yojson.End_of_tuple ->
                        Atdgen_runtime.Oj_run.missing_tuple_fields p !len [ 0; 1 ]);
                  ) p lb
                )
              );
            | 5 ->
              field_trades := (
                Some (
                  (
                    fun p lb ->
                      Yojson.Safe.read_space p lb;
                      let std_tuple = Yojson.Safe.start_any_tuple p lb in
                      let len = ref 0 in
                      let end_of_tuple = ref false in
                      (try
                        let x0 =
                          let x =
                            (
                              Atdgen_runtime.Oj_run.read_int
                            ) p lb
                          in
                          incr len;
                          Yojson.Safe.read_space p lb;
                          Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                          x
                        in
                        let x1 =
                          let x =
                            (
                              Atdgen_runtime.Oj_run.read_int
                            ) p lb
                          in
                          incr len;
                          (try
                            Yojson.Safe.read_space p lb;
                            Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                          with Yojson.End_of_tuple -> end_of_tuple := true);
                          x
                        in
                        if not !end_of_tuple then (
                          try
                            while true do
                              Yojson.Safe.skip_json p lb;
                              Yojson.Safe.read_space p lb;
                              Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                            done
                          with Yojson.End_of_tuple -> ()
                        );
                        (x0, x1)
                      with Yojson.End_of_tuple ->
                        Atdgen_runtime.Oj_run.missing_tuple_fields p !len [ 0; 1 ]);
                  ) p lb
                )
              );
            | 6 ->
              field_low := (
                Some (
                  (
                    fun p lb ->
                      Yojson.Safe.read_space p lb;
                      let std_tuple = Yojson.Safe.start_any_tuple p lb in
                      let len = ref 0 in
                      let end_of_tuple = ref false in
                      (try
                        let x0 =
                          let x =
                            (
                              read_strnum
                            ) p lb
                          in
                          incr len;
                          Yojson.Safe.read_space p lb;
                          Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                          x
                        in
                        let x1 =
                          let x =
                            (
                              read_strnum
                            ) p lb
                          in
                          incr len;
                          (try
                            Yojson.Safe.read_space p lb;
                            Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                          with Yojson.End_of_tuple -> end_of_tuple := true);
                          x
                        in
                        if not !end_of_tuple then (
                          try
                            while true do
                              Yojson.Safe.skip_json p lb;
                              Yojson.Safe.read_space p lb;
                              Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                            done
                          with Yojson.End_of_tuple -> ()
                        );
                        (x0, x1)
                      with Yojson.End_of_tuple ->
                        Atdgen_runtime.Oj_run.missing_tuple_fields p !len [ 0; 1 ]);
                  ) p lb
                )
              );
            | 7 ->
              field_high := (
                Some (
                  (
                    fun p lb ->
                      Yojson.Safe.read_space p lb;
                      let std_tuple = Yojson.Safe.start_any_tuple p lb in
                      let len = ref 0 in
                      let end_of_tuple = ref false in
                      (try
                        let x0 =
                          let x =
                            (
                              read_strnum
                            ) p lb
                          in
                          incr len;
                          Yojson.Safe.read_space p lb;
                          Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                          x
                        in
                        let x1 =
                          let x =
                            (
                              read_strnum
                            ) p lb
                          in
                          incr len;
                          (try
                            Yojson.Safe.read_space p lb;
                            Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                          with Yojson.End_of_tuple -> end_of_tuple := true);
                          x
                        in
                        if not !end_of_tuple then (
                          try
                            while true do
                              Yojson.Safe.skip_json p lb;
                              Yojson.Safe.read_space p lb;
                              Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                            done
                          with Yojson.End_of_tuple -> ()
                        );
                        (x0, x1)
                      with Yojson.End_of_tuple ->
                        Atdgen_runtime.Oj_run.missing_tuple_fields p !len [ 0; 1 ]);
                  ) p lb
                )
              );
            | 8 ->
              field_o := (
                Some (
                  (
                    read_strnum
                  ) p lb
                )
              );
            | _ -> (
                Yojson.Safe.skip_json p lb
              )
        );
      done;
      assert false;
    with Yojson.End_of_object -> (
        (
          {
            ask = (match !field_ask with Some x -> x | None -> Atdgen_runtime.Oj_run.missing_field p "ask");
            bid = (match !field_bid with Some x -> x | None -> Atdgen_runtime.Oj_run.missing_field p "bid");
            last = (match !field_last with Some x -> x | None -> Atdgen_runtime.Oj_run.missing_field p "last");
            vol = (match !field_vol with Some x -> x | None -> Atdgen_runtime.Oj_run.missing_field p "vol");
            vwap = (match !field_vwap with Some x -> x | None -> Atdgen_runtime.Oj_run.missing_field p "vwap");
            trades = (match !field_trades with Some x -> x | None -> Atdgen_runtime.Oj_run.missing_field p "trades");
            low = (match !field_low with Some x -> x | None -> Atdgen_runtime.Oj_run.missing_field p "low");
            high = (match !field_high with Some x -> x | None -> Atdgen_runtime.Oj_run.missing_field p "high");
            o = (match !field_o with Some x -> x | None -> Atdgen_runtime.Oj_run.missing_field p "o");
          }
         : expected_instrument)
      )
)
let expected_instrument_of_string s =
  read_expected_instrument (Yojson.Safe.init_lexer ()) (Lexing.from_string s)
