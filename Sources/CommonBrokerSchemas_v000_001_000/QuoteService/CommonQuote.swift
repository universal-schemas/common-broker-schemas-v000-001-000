import Foundation

/// Broker-agnostic normalized quote used across the app.
public struct CommonQuote: Sendable, Hashable {
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
  // Note: sizes are normalized to shares (SDKs may report in 100-share lots)
  public let bidSize: Int?
  public let bidExchange: String?
  public let bidDate: Date?

  public let ask: Double?
  // Note: sizes are normalized to shares (SDKs may report in 100-share lots)
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

public struct CommonGreeks: Sendable, Hashable {
  public let delta: Double?
  public let gamma: Double?
  public let theta: Double?
  public let vega: Double?
  public let rho: Double?
  public let phi: Double?
  public let bidImpliedVolatility: Double?
  public let midImpliedVolatility: Double?
  public let askImpliedVolatility: Double?
  public let smvVol: Double?
  public let updatedAt: Date?

  public init(
    delta: Double?,
    gamma: Double?,
    theta: Double?,
    vega: Double?,
    rho: Double?,
    phi: Double?,
    bidImpliedVolatility: Double?,
    midImpliedVolatility: Double?,
    askImpliedVolatility: Double?,
    smvVol: Double?,
    updatedAt: Date?,
  ) {
    self.delta = delta
    self.gamma = gamma
    self.theta = theta
    self.vega = vega
    self.rho = rho
    self.phi = phi
    self.bidImpliedVolatility = bidImpliedVolatility
    self.midImpliedVolatility = midImpliedVolatility
    self.askImpliedVolatility = askImpliedVolatility
    self.smvVol = smvVol
    self.updatedAt = updatedAt
  }
}
