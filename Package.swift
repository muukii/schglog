// swift-tools-version: 5.6
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
  name: "chglog.swift",
  platforms: [
    .macOS(.v10_15),
    .iOS(.v13),
  ],
  products: [
    .executable(
      name: "schglog",
      targets: ["schglog"]
    ),
    .library(
      name: "ChangeLogKit",
      targets: ["ChangeLogKit"]
    ),
  ],
  dependencies: [
    // Dependencies declare other packages that this package depends on.
    .package(url: "https://github.com/kean/Get.git", from: "0.5.0"),
    .package(
      url: "https://github.com/apple/swift-argument-parser.git",
      .upToNextMajor(from: "1.0.0")
    ),
    .package(url: "https://github.com/onevcat/Rainbow.git", from: "4.0.1"),
    //    .package(url: "https://github.com/dominicegginton/Spinner", from: "1.1.4"),
  ],
  targets: [
    .target(
      name: "schglog",
      dependencies: [
        "ChangeLogKit",
        .product(name: "ArgumentParser", package: "swift-argument-parser"),
      ]
    ),
    .target(
      name: "ChangeLogKit",
      dependencies: [
        "Get",
        "Rainbow",
      ]
    ),
    .testTarget(
      name: "chglog.swiftTests",
      dependencies: ["ChangeLogKit"]
    ),
  ]
)
