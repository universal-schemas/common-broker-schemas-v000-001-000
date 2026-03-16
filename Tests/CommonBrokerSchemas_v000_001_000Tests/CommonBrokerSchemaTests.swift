import Foundation
import Testing

@testable import CommonBrokerSchemas_v000_001_000

@Test
func commonQuoteVariantPreservesEssentials() {
  let quote = CommonQuote(
    id: 7,
    assetType: "stock",
    tradeDate: Date(timeIntervalSince1970: 100),
    symbol: "AAPL",
    symbolDescription: "Apple",
    exchange: "NASDAQ",
    last: 188.5,
    change: 1.2,
    changePercentage: 0.64,
    bid: 188.4,
    bidSize: 100,
    bidExchange: "Q",
    bidDate: Date(timeIntervalSince1970: 101),
    ask: 188.6,
    askSize: 200,
    askExchange: "Q",
    askDate: Date(timeIntervalSince1970: 102),
    open: 187.0,
    high: 189.0,
    low: 186.8,
    close: 187.3,
    volume: 5000,
    previousClose: 187.3,
    fiftyTwoWeekHigh: 199.0,
    fiftyTwoWeekLow: 164.0,
    averageVolume: 6000,
    latestTradeVolume: 50,
    rootSymbol: nil,
    underlying: nil,
    strikePrice: nil,
    openInterest: nil,
    contractSize: nil,
    expirationDate: nil,
    expirationStyle: nil,
    optionKind: nil,
    greeks: nil
  )

  let variant = CommonQuoteVariant(quote)
  #expect(variant.last == 188.5)
  #expect(variant.essentials.symbol == "AAPL")
  #expect(variant.essentials.changePercentage == 0.64)
}

@Test
func commonWatchlistKeepsItems() {
  let watchlist = CommonWatchlist(
    id: "w1",
    name: "Tech",
    publicId: "public-tech",
    items: [
      .init(id: "i1", symbol: "AAPL"),
      .init(id: "i2", symbol: "MSFT"),
    ]
  )

  #expect(watchlist.items.count == 2)
  #expect(watchlist.items.map(\.symbol) == ["AAPL", "MSFT"])
}
