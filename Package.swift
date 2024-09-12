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
        .package(url: "https://github.com/daltoniam/Starscream.git", exact: "3.1.2"),
        .package(url: "https://github.com/AlexMzrk/HandyJSON.git", .branch("dev"))
        ],
    targets: [
        .target(
            name: "ScClient",
            dependencies: [
                "Starscream",
                "HandyJSON"
                ])
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
