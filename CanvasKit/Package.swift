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
    .package(url: "https://github.com/pointfreeco/swift-snapshot-testing.git", from: "1.17.6"),
    .package(url: "https://github.com/SwiftGen/SwiftGenPlugin", from: "6.6.0")
  ],
  targets: [
    .target(
      name: "CanvasKit",
      resources: [
        .process("Resources")
      ],
      plugins: [
        .plugin(name: "SwiftGenPlugin", package: "SwiftGenPlugin")
      ]
    ),
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
      exclude: ["__Snapshots__"]
    )
  ]
)
