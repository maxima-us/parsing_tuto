open Base_t.Types
open Atd_instrument.Instrument_t;;

type parsed = {
    symbol: pair 

    ; low: price 
    ; high: price 
    ; vwap: price 
    ; last: price
    
    ; volume: volume
    ; trdCount: count
    
    ; bestAsk: price
    ; bestBid: price

    ; prevLow: price
    ; prevHigh: price
    ; prevVwap: price
    ; prevVolume: volume
    ; prevTrdCount: count
};;



let parse_instrument symbol data = 
    let (askPrice, _, _) = data.ask in
    let (bidPrice, _, _) = data.bid in
    let (lastprice, _) = data.last in
    let (curVol, preVol) = data.vol in
    let (curVwap, preVwap) = data.vwap in
    let (curTrades, preTrades) = data.trades in
    let (curLow, preLow) = data.low in
    let (curHi, preHi) = data.high in { 
        symbol = Pair symbol
      ; low = Price curLow
      ; high = Price curHi
      ; vwap = Price curVwap
      ; last = Price lastprice
      ; volume = Volume curVol
      ; trdCount = Count curTrades
      ; bestAsk = Price askPrice
      ; bestBid = Price bidPrice
      ; prevLow = Price preLow
      ; prevHigh = Price preHi
      ; prevVwap = Price preVwap
      ; prevVolume = Volume preVol
      ; prevTrdCount = Count preTrades
    }