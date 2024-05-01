// swift-tools-version:5.6
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "ScClient",
    products: [
        .library(
            name: "ScClient",
            targets: ["ScClient"]),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        .package(url: "https://github.com/daltoniam/Starscream.git", exact: "3.0.6"),
        .package(url: "https://github.com/Miles-Matheson/HandyJSON.git", branch: "master")
        ],
    targets: [
        .target(
            name: "ScClient",
            dependencies: [
                "Starscream",
                "HandyJSON"
                ], swiftSettings: [.unsafeFlags(["-no-whole-module-optimization", "-Onone"])])
        ,
        .target(
            name: "Main",
            dependencies: [
                "ScClient"
            ]),
        .testTarget(
            name: "ScClientTests",
            dependencies: ["ScClient"])
        ]
)
