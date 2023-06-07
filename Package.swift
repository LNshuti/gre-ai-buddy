// swift-tools-version:5.5
import PackageDescription

let package = Package(
    name: "GREAIBuddy",
    platforms: [
        .iOS(.v15),
    ],
    products: [
        .library(
            name: "GREAIBuddy",
            targets: ["GREAIBuddy"]),
    ],
    dependencies: [
        .package(url: "https://github.com/apple/swift-nio.git", from: "2.0.0"), // For networking
        .package(url: "https://github.com/apple/swift-argument-parser", from: "0.4.4"), // For command-line parsing
        .package(url: "https://github.com/apple/swift-log.git", from: "1.0.0"), // For logging
        .package(url: "https://github.com/apple/swift-algorithms", from: "0.0.1"), // For additional Swift algorithms
    ],
    targets: [
        .target(
            name: "GREAIBuddy",
            dependencies: [
                .product(name: "NIO", package: "swift-nio"),
                .product(name: "ArgumentParser", package: "swift-argument-parser"),
                .product(name: "Logging", package: "swift-log"),
                .product(name: "Algorithms", package: "swift-algorithms"),
            ]),
        .testTarget(
            name: "GREAIBuddyTests", // Renamed the test target
            dependencies: ["GREAIBuddy"]),
    ]
)
