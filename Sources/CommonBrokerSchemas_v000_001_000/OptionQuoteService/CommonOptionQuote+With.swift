import Foundation

extension CommonOptionQuote {
  func withGreeks(_ g: Greeks?) -> CommonOptionQuote {
    CommonOptionQuote(
      symbol: symbol,
      underlying: underlying,
      last: last,
      bid: bid,
      ask: ask,
      strikePrice: strikePrice,
      expirationDate: expirationDate,
      optionKind: optionKind,
      greeks: g,
    )
  }
}
