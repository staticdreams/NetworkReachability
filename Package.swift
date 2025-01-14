// swift-tools-version: 5.8
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "NetworkReachability",
    platforms: [
        .iOS(.v11),
        .macOS(.v10_13),
        .tvOS(.v11),
        .watchOS(.v5),
        .visionOS(.v1)
    ],
    products: [
        .library(
            name: "NetworkReachability",
            targets: ["NetworkReachability"]
        ),
    ],
    dependencies: [
        .package(url: "https://github.com/apple/swift-docc-plugin", from: "1.0.0"),
        .package(url: "https://github.com/nicklockwood/SwiftFormat", exact: "0.51.7")
    ],
    targets: [
        .target(
            name: "NetworkReachability",
            dependencies: []
        ),
        .testTarget(
            name: "NetworkReachabilityTests",
            dependencies: ["NetworkReachability"]
        ),
    ]
)
