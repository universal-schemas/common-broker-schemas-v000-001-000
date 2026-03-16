import Foundation

public struct CommonOrder: Codable, Sendable, Hashable, Identifiable {
  public let id: Int
  public let orderType: String
  public let symbol: String
  public let side: String
  public let quantity: Double
  public let status: String
  public let duration: String
  public let price: Double?
  public let createDate: Date?
  public let transactionDate: Date?

  public init(
    id: Int,
    orderType: String,
    symbol: String,
    side: String,
    quantity: Double,
    status: String,
    duration: String,
    price: Double?,
    createDate: Date?,
    transactionDate: Date?,
  ) {
    self.id = id
    self.orderType = orderType
    self.symbol = symbol
    self.side = side
    self.quantity = quantity
    self.status = status
    self.duration = duration
    self.price = price
    self.createDate = createDate
    self.transactionDate = transactionDate
  }
}
