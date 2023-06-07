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
        // Dependencies declare other packages that this package depends on.
        // For example, a package might use a library for some functionality,
        // a server for a component, a UI for its interface, etc.
        .package(url: "https://github.com/apple/swift-nio.git", from: "2.0.0"), // For networking
        .package(url: "https://github.com/apple/swift-argument-parser", from: "0.4.4"), // For command-line parsing
        .package(url: "https://github.com/apple/swift-log.git", from: "1.0.0"), // For logging
        .package(url: "https://github.com/apple/swift-algorithms", from: "0.0.1"), // For additional Swift algorithms
        // Add other dependencies as needed.
    ],
    targets: [
        .target(
            name: "GREEAIBuddy",
            dependencies: [
                .product(name: "NIO", package: "swift-nio"),
                .product(name: "ArgumentParser", package: "swift-argument-parser"),
                .product(name: "Logging", package: "swift-log"),
                .product(name: "Algorithms", package: "swift-algorithms"),
                // Add other target dependencies as needed.
            ]),
        .testTarget(
            name: "GREEAIBuddy",
            dependencies: ["GREEAIBuddy"]),
    ]
)
