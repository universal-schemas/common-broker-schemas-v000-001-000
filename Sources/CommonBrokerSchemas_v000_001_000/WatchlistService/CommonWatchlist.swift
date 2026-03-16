import Foundation

public struct CommonWatchlistItem: Sendable, Hashable, Identifiable {
  public let id: String
  public let symbol: String

  public init(id: String, symbol: String) {
    self.id = id
    self.symbol = symbol
  }
}

public struct CommonWatchlist: Sendable, Hashable, Identifiable {
  public let id: String
  public let name: String
  public let publicId: String?
  public let items: [CommonWatchlistItem]

  public init(id: String, name: String, publicId: String?, items: [CommonWatchlistItem]) {
    self.id = id
    self.name = name
    self.publicId = publicId
    self.items = items
  }
}
