(* Auto-generated from "instrument.atd" *)
              [@@@ocaml.warning "-27-32-35-39"]

type vol =  Vol of float 

type strnum = Float.t

type price =  Price of float 

type expected = {
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

type error = string list

type date = { year: int; month: int; day: int }

type ask =  Ask of (price * vol) 
