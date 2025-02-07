// swift-tools-version: 6.0

import PackageDescription

let package = Package(
  name: "CanvasKit",
  platforms: [
    .iOS(.v18),
    .macOS(.v15)
  ],
  products: [
    .library(name: "CanvasKit", targets: ["CanvasKit"]),
    .plugin(
      name: "SnapshotsSymlink",
      targets: ["SnapshotsSymlink"]
    )
  ],
  dependencies: [
    .package(url: "https://github.com/marmelroy/PhoneNumberKit", from: "4.0.0"),
    .package(url: "https://github.com/pointfreeco/swift-snapshot-testing.git", from: "1.17.6"),
    .package(url: "https://github.com/SwiftGen/SwiftGenPlugin", from: "6.6.0")
  ],
  targets: [
    .target(
      name: "CanvasKit",
      dependencies: [
        .product(name: "PhoneNumberKit", package: "PhoneNumberKit")
      ],
      resources: [.process("Resources")],
      plugins: [
        .plugin(name: "IconsProcessor"),
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
        .product(name: "SnapshotTesting", package: "swift-snapshot-testing")
      ],
      plugins: [
        .plugin(name: "ExcludeSnapshots")
      ]
    ),
    .executableTarget(
      name: "IconsProcessorExec",
      path: "Executables/IconsProcessorExec"
    ),
    .plugin(
      name: "ExcludeSnapshots",
      capability: .buildTool(),
      path: "Plugins/ExcludeSnapshots"
    ),
    .plugin(
      name: "IconsProcessor",
      capability: .buildTool(),
      dependencies: ["IconsProcessorExec"],
      path: "Plugins/IconsProcessor"
    ),
    .plugin(name: "SnapshotsSymlink",
      capability: .buildTool(),
      path: "Plugins/SnapshotsSimlink"
    )
  ]
)
