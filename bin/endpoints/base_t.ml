module Types =
struct
    type pair = Pair of string
    type price = Price of float
    type volume = Volume of float
    type count = Count of int
    type vwap = Price of float

    type ask = Ask of (price * volume)
    type bid = Bid of (price * volume)

    type error = Error of string list
end