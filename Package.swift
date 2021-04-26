// swift-tools-version:5.3

import PackageDescription

let package = Package(
    name: "cloud-sdk-ios",
    platforms: [.iOS(.v13)],
    products: [
        .library(
            name: "cloud-sdk-ios",
            targets: ["cloud-sdk-ios"]
        ),
        .library(name: "SAPCommon", targets: ["SAPCommon"]),
        .library(name: "SAPFoundation", targets: ["SAPFoundation"]),
    ],
    dependencies: [
        .package(name: "FioriSwiftUI", url: "https://github.com/SAP/cloud-sdk-ios-fiori.git", .upToNextMajor(from: "0.9.0")),
    ],
    targets: [
        .target(
            name: "cloud-sdk-ios",
            dependencies: [.product(name: "FioriSwiftUI", package: "FioriSwiftUI")]
        ),
        .testTarget(
            name: "cloud-sdk-iosTests",
            dependencies: ["cloud-sdk-ios"]
        ),
        .binaryTarget(name: "SAPCommon",
                      url: "https://github.com/SAP/cloud-sdk-ios/releases/download/5.1.3-xcfrwk/SAPCommon-5.1.13-Release-xcframework.zip",
                      checksum: "72c85e34960ab6c94621210275882db0c87b0d0dba60acb61b9ff73542e32d10"),
        .binaryTarget(name: "SAPFoundation",
                      url: "https://github.com/SAP/cloud-sdk-ios/releases/download/5.1.3-xcfrwk/SAPFoundation-5.1.13-Release-xcframework.zip",
                      checksum: "c495fcb022b4a7603c94923b6d9acbfa5dc75d7eb523a58e4ed7e7d26cd670b9"),
    ]
)
