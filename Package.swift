// swift-tools-version:6.2
import PackageDescription

let package = Package(
  name: "common-broker-schemas-v000-001-000",
  platforms: [
    .iOS(.v17),
    .macOS(.v15),
    .tvOS(.v17),
    .watchOS(.v10),
  ],
  products: [
    .library(
      name: "CommonBrokerSchemas_v000_001_000",
      targets: ["CommonBrokerSchemas_v000_001_000"]
    )
  ],
  targets: [
    .target(
      name: "CommonBrokerSchemas_v000_001_000"
    ),
    .testTarget(
      name: "CommonBrokerSchemas_v000_001_000Tests",
      dependencies: ["CommonBrokerSchemas_v000_001_000"]
    ),
  ]
)
