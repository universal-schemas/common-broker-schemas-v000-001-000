import Foundation

/// Detailed quote containing the full set of normalized fields.
public struct CommonQuoteDetailed: Sendable, Hashable {
  // Meta
  public let id: Int?
  public let assetType: String?
  public let tradeDate: Date?

  // Identity & display
  public let symbol: String
  public let symbolDescription: String?
  public let exchange: String?

  // Top of book
  public let last: Double?
  public let change: Double?
  public let changePercentage: Double?

  public let bid: Double?
  public let bidSize: Int?
  public let bidExchange: String?
  public let bidDate: Date?

  public let ask: Double?
  public let askSize: Int?
  public let askExchange: String?
  public let askDate: Date?

  // Session stats
  public let open: Double?
  public let high: Double?
  public let low: Double?
  public let close: Double?
  public let volume: Int?
  public let previousClose: Double?
  public let fiftyTwoWeekHigh: Double?
  public let fiftyTwoWeekLow: Double?
  public let averageVolume: Int?
  public let latestTradeVolume: Int?

  // Option/derivative fields (if applicable)
  public let rootSymbol: String?
  public let underlying: String?
  public let strikePrice: Double?
  public let openInterest: Int?
  public let contractSize: Int?
  public let expirationDate: Date?
  public let expirationStyle: String?
  public let optionKind: String?
  public let greeks: CommonGreeks?

  public init(
    id: Int?,
    assetType: String?,
    tradeDate: Date?,
    symbol: String,
    symbolDescription: String?,
    exchange: String?,
    last: Double?,
    change: Double?,
    changePercentage: Double?,
    bid: Double?,
    bidSize: Int?,
    bidExchange: String?,
    bidDate: Date?,
    ask: Double?,
    askSize: Int?,
    askExchange: String?,
    askDate: Date?,
    open: Double?,
    high: Double?,
    low: Double?,
    close: Double?,
    volume: Int?,
    previousClose: Double?,
    fiftyTwoWeekHigh: Double?,
    fiftyTwoWeekLow: Double?,
    averageVolume: Int?,
    latestTradeVolume: Int?,
    rootSymbol: String?,
    underlying: String?,
    strikePrice: Double?,
    openInterest: Int?,
    contractSize: Int?,
    expirationDate: Date?,
    expirationStyle: String?,
    optionKind: String?,
    greeks: CommonGreeks?,
  ) {
    self.id = id
    self.assetType = assetType
    self.tradeDate = tradeDate
    self.symbol = symbol
    self.symbolDescription = symbolDescription
    self.exchange = exchange
    self.last = last
    self.change = change
    self.changePercentage = changePercentage
    self.bid = bid
    self.bidSize = bidSize
    self.bidExchange = bidExchange
    self.bidDate = bidDate
    self.ask = ask
    self.askSize = askSize
    self.askExchange = askExchange
    self.askDate = askDate
    self.open = open
    self.high = high
    self.low = low
    self.close = close
    self.volume = volume
    self.previousClose = previousClose
      self.fiftyTwoWeekHigh = fiftyTwoWeekHigh
      self.fiftyTwoWeekLow = fiftyTwoWeekLow
      self.averageVolume = averageVolume
      self.latestTradeVolume = latestTradeVolume
    self.rootSymbol = rootSymbol
    self.underlying = underlying
    self.strikePrice = strikePrice
    self.openInterest = openInterest
    self.contractSize = contractSize
    self.expirationDate = expirationDate
    self.expirationStyle = expirationStyle
    self.optionKind = optionKind
    self.greeks = greeks
  }
}

extension CommonQuoteDetailed {
  public init(_ full: CommonQuote) {
    self.init(
      id: full.id,
      assetType: full.assetType,
      tradeDate: full.tradeDate,
      symbol: full.symbol,
      symbolDescription: full.symbolDescription,
      exchange: full.exchange,
      last: full.last,
      change: full.change,
      changePercentage: full.changePercentage,
      bid: full.bid,
      bidSize: full.bidSize,
      bidExchange: full.bidExchange,
      bidDate: full.bidDate,
      ask: full.ask,
      askSize: full.askSize,
      askExchange: full.askExchange,
      askDate: full.askDate,
      open: full.open,
      high: full.high,
      low: full.low,
      close: full.close,
      volume: full.volume,
      previousClose: full.previousClose,
      fiftyTwoWeekHigh: full.fiftyTwoWeekHigh,
      fiftyTwoWeekLow: full.fiftyTwoWeekLow,
      averageVolume: full.averageVolume,
      latestTradeVolume: full.latestTradeVolume,
      rootSymbol: full.rootSymbol,
      underlying: full.underlying,
      strikePrice: full.strikePrice,
      openInterest: full.openInterest,
      contractSize: full.contractSize,
      expirationDate: full.expirationDate,
      expirationStyle: full.expirationStyle,
      optionKind: full.optionKind,
      greeks: full.greeks,
    )
  }

  public var essentials: CommonQuoteEssentials {
    CommonQuoteEssentials(self)
  }
}
