// swift-tools-version: 6.0

import PackageDescription

let package = Package(
  name: "CanvasKit",
  platforms: [
    .iOS(.v18)
  ],
  products: [
    .library(name: "CanvasKit", targets: ["CanvasKit"])
  ],
  dependencies: [
    .package(url: "https://github.com/pointfreeco/swift-snapshot-testing.git", from: "1.17.6")
  ],
  targets: [
    .target(name: "CanvasKit"),
    .testTarget(
      name: "CanvasKitTests",
      dependencies: ["CanvasKit"]
    ),
    .testTarget(
      name: "CanvasKitUITests",
      dependencies: [
        "CanvasKit",
        .product(name: "SnapshotTesting", package: "swift-snapshot-testing"),
      ],
      exclude: ["Snapshots"]
    )
  ]
)
