import Foundation

public struct CommonAccountBalance: Sendable, Hashable {
  public let accountNumber: String?
  public let accountType: String?
  public let totalCash: Double?
  public let totalEquity: Double?
  public let longMarketValue: Double?
  public let shortMarketValue: Double?
  public let closedProfitLoss: Double?
  public let openProfitLoss: Double?
  public let pendingOrdersCount: Int?
  // Margin details
  public let federalFundsCall: Double?
  public let maintenanceRequirement: Double?
  public let stockBuyingPower: Double?
  public let optionBuyingPower: Double?
  // Cash details
  public let cashAvailable: Double?
  public let unsettledFunds: Double?
  public let sweep: Double?

  public init(
    accountNumber: String?,
    accountType: String?,
    totalCash: Double?,
    totalEquity: Double?,
    longMarketValue: Double?,
    shortMarketValue: Double?,
    closedProfitLoss: Double?,
    openProfitLoss: Double?,
    pendingOrdersCount: Int?,
    federalFundsCall: Double?,
    maintenanceRequirement: Double?,
    stockBuyingPower: Double?,
    optionBuyingPower: Double?,
    cashAvailable: Double?,
    unsettledFunds: Double?,
    sweep: Double?,
  ) {
    self.accountNumber = accountNumber
    self.accountType = accountType
    self.totalCash = totalCash
    self.totalEquity = totalEquity
    self.longMarketValue = longMarketValue
    self.shortMarketValue = shortMarketValue
    self.closedProfitLoss = closedProfitLoss
    self.openProfitLoss = openProfitLoss
    self.pendingOrdersCount = pendingOrdersCount
    self.federalFundsCall = federalFundsCall
    self.maintenanceRequirement = maintenanceRequirement
    self.stockBuyingPower = stockBuyingPower
    self.optionBuyingPower = optionBuyingPower
    self.cashAvailable = cashAvailable
    self.unsettledFunds = unsettledFunds
    self.sweep = sweep
  }
}
