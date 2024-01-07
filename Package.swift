// swift-tools-version: 5.8
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "FlashTabBar",
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "FlashTabBar",
            targets: ["FlashTabBar"]),
        
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        .package(url: "https://github.com/mrtctns/FlashTabBar.git", from: "1.0.1")
    ],
    targets: [
        
        .target(
            name: "FlashTabBar",
            dependencies: [
            ])
    ]
)
