import Foundation

public struct CommonOptionQuote: Sendable, Hashable {
  public let symbol: String
  public let underlying: String?
  public let last: Double?
  public let bid: Double?
  public let ask: Double?
  public let strikePrice: Double?
  public let expirationDate: Date?
  public let optionKind: String?

  public struct Greeks: Sendable, Hashable {
    public let delta: Double?
    public let gamma: Double?
    public let theta: Double?
    public let vega: Double?
    public let rho: Double?
    // Unified IV: for brokers that provide a single implied volatility value.
    public let impliedVolatility: Double?
    public let bidImpliedVolatility: Double?
    public let midImpliedVolatility: Double?
    public let askImpliedVolatility: Double?
    public let updatedAt: Date?

    public init(
      delta: Double?,
      gamma: Double?,
      theta: Double?,
      vega: Double?,
      rho: Double?,
      impliedVolatility: Double?,
      bidImpliedVolatility: Double?,
      midImpliedVolatility: Double?,
      askImpliedVolatility: Double?,
      updatedAt: Date?,
    ) {
      self.delta = delta
      self.gamma = gamma
      self.theta = theta
      self.vega = vega
      self.rho = rho
      self.impliedVolatility = impliedVolatility
      self.bidImpliedVolatility = bidImpliedVolatility
      self.midImpliedVolatility = midImpliedVolatility
      self.askImpliedVolatility = askImpliedVolatility
      self.updatedAt = updatedAt
    }
  }

  public let greeks: Greeks?

  public init(
    symbol: String,
    underlying: String?,
    last: Double?,
    bid: Double?,
    ask: Double?,
    strikePrice: Double?,
    expirationDate: Date?,
    optionKind: String?,
    greeks: Greeks?,
  ) {
    self.symbol = symbol
    self.underlying = underlying
    self.last = last
    self.bid = bid
    self.ask = ask
    self.strikePrice = strikePrice
    self.expirationDate = expirationDate
    self.optionKind = optionKind
    self.greeks = greeks
  }
}
