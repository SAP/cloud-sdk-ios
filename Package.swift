// swift-tools-version:5.3

import PackageDescription

let package = Package(
    name: "cloud-sdk-ios",
    platforms: [.iOS(.v13)],
    products: [
        .library(name: "SAPCommon", targets: ["SAPCommon"]),
        .library(name: "SAPFoundation", targets: ["SAPFoundation"]),
    ],
    dependencies: [],
    targets: [
        .binaryTarget(name: "SAPCommon",
                      url: "https://github.com/SAP/cloud-sdk-ios/releases/download/6.1.2-xcfrwk/SAPCommon-6.1.2-Release-xcframework.zip",
                      checksum: "bb813a468750f08bdb3f3e49a81e68edb17b6745dcd7f980ee9a87b0f376e959"),
        .binaryTarget(name: "SAPFoundation",
                      url: "https://github.com/SAP/cloud-sdk-ios/releases/download/6.1.2-xcfrwk/SAPFoundation-6.1.2-Release-xcframework.zip",
                      checksum: "21f5bc7d9055743c82e33b82834071b764f3955aaab288aa5f03236948a28956"),
    ]
)
