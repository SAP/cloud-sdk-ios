// swift-tools-version:5.5

import PackageDescription

let version = "9.2.8"
let root = "https://rbsc.repositories.cloud.sap/nexus3/repository/maven73555000100900006345/ios"

let sapCommonChecksum = "3daa99c20ac319af5e02d32c748377b6412f7c70cce183eb32495586e4daa3ac"
let sapFioriChecksum = "a90b63be841e58014c6dd476d5ee7aae31be5f971cf1628a5cc68340a91d9c52"
let sapFioriFlowsChecksum = "96937147931107e89a5b88a21a5e0f34b9a050633ba311eb88790f9039ba04a9"
let sapFoundationChecksum = "f026550abfbb22202a5ff2f22ccb662f697082942d508add945fbf48fbcb37c5"
let sapODataChecksum = "576890d3454a86d72b31dda6ff9e1ab0eb0ce8798ac8a9023ae4446c3eb781e1"
let sapOfflineODataChecksum = "5de77200a8e6d939322f0948e4215925b70cb18cdc64412d3ae67946a42037c4"
let sapMLChecksum = "6b6407e45de3987e5ce0a86c5e8b4e3f60e3749a713be550bb14427003f441fa"

let package = Package(
    name: "cloud-sdk-ios",
    platforms: [.iOS(.v15)],
    products: [
        // Products define the executables and libraries produced by a package, and make them visible to other packages.
        .library(
            name: "SAPCommon",
            targets: ["SAPCommon"]),
        .library(
            name: "SAPFiori",
            targets: ["SAPFiori"]),
        .library(
            name: "SAPFioriFlows",
            targets: ["SAPFioriFlows"]),
        .library(
            name: "SAPFoundation",
            targets: ["SAPFoundation"]),
        .library(
            name: "SAPOData",
            targets: ["SAPOData"]),
        .library(
            name: "SAPOfflineOData",
            targets: ["SAPOfflineOData"]),
        .library(
            name: "SAPML",
            targets: ["SAPML"]),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        // .package(url: /* package url */, from: "1.0.0"),
    ],
    targets: [
        .binaryTarget(name: "SAPCommon", url: "\(root)/SAPCommon/\(version)/SAPCommon-\(version)-Release.xcframework.zip",
                      checksum: sapCommonChecksum),
        .binaryTarget(name: "SAPFiori", url: "\(root)/SAPFiori/\(version)/SAPFiori-\(version)-Release.xcframework.zip",
                      checksum: sapFioriChecksum),
        .binaryTarget(name: "SAPFioriFlows", url: "\(root)/SAPFioriFlows/\(version)/SAPFioriFlows-\(version)-Release.xcframework.zip",
                      checksum: sapFioriFlowsChecksum),
        .binaryTarget(name: "SAPFoundation", url: "\(root)/SAPFoundation/\(version)/SAPFoundation-\(version)-Release.xcframework.zip",
                      checksum: sapFoundationChecksum),
        .binaryTarget(name: "SAPOData", url: "\(root)/SAPOData/\(version)/SAPOData-\(version)-Release.xcframework.zip",
                      checksum: sapODataChecksum),
        .binaryTarget(name: "SAPOfflineOData", url: "\(root)/SAPOfflineOData/\(version)/SAPOfflineOData-\(version)-Release.xcframework.zip",
                      checksum: sapOfflineODataChecksum),
        .binaryTarget(name: "SAPML", url: "\(root)/SAPML/\(version)/SAPML-\(version)-Release.xcframework.zip",
                      checksum: sapMLChecksum)
    ]
)
