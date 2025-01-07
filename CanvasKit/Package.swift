// swift-tools-version: 6.0

import PackageDescription

let package = Package(
  name: "CanvasKit",
  products: [
    .library(name: "CanvasKit", targets: ["CanvasKit"])
  ],
  targets: [
    .target(name: "CanvasKit"),
    .testTarget(name: "CanvasKitTests", dependencies: ["CanvasKit"])
  ]
)
