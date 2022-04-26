// swift-tools-version:5.3

import PackageDescription

let version = "6.1.15"
let root = "https://rbsc.repositories.cloud.sap/nexus3/repository/maven73554900100900005307/com/sap/mobile/platform/client/hcp/sdk/ios"

let sapCommonChecksum = "a33356404c2301d984989ab6063644815fef7b52a595a3c75a32b100f3a10ef6"
let sapFioriChecksum = "4479026b2a844280854e8817deef562da7b57a064b7a6d07ee787d17e73d65ba"
let sapFioriFlowsChecksum = "08de25a060ee4904c4f782e036096af4be5cb4bcd475b37085e90e01d72b81ef"
let sapFoundationChecksum = "8f150566b97b2689a7578a579d7720adf1da3dffcc079f4295258872828f2d45"
let sapODataChecksum = "2dd13fffe761b8bac460164b9e1ea2c3ffc7a8aa1ea467fafd397e910efc2705"
let sapOfflineODataChecksum = "2faec17364274ea35a66631339853249866728c41a32d1751fc2963ae987aaa6"
let sapMLChecksum = "d6b3fda7814910ebc67f5ec2caf7eb0d1f5ce2dd59c3c23a3156636d6ffc42e0"

let package = Package(
    name: "cloud-sdk-ios",
    platforms: [.iOS(.v13)],
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
        .binaryTarget(name: "SAPCommon", url: "\(root)/foundation/SAPCommon/\(version)/SAPCommon-\(version)-Release-xcframework.zip",
                      checksum: sapCommonChecksum),
        .binaryTarget(name: "SAPFiori", url: "\(root)/uireuse/SAPFiori/\(version)/SAPFiori-\(version)-Release-xcframework.zip",
                      checksum: sapFioriChecksum),
        .binaryTarget(name: "SAPFioriFlows", url: "\(root)/flows/SAPFioriFlows/\(version)/SAPFioriFlows-\(version)-Release-xcframework.zip",
                      checksum: sapFioriFlowsChecksum),
        .binaryTarget(name: "SAPFoundation", url: "\(root)/foundation/SAPFoundation/\(version)/SAPFoundation-\(version)-Release-xcframework.zip",
                      checksum: sapFoundationChecksum),
        .binaryTarget(name: "SAPOData", url: "\(root)/foundation/SAPOData/\(version)/SAPOData-\(version)-Release-xcframework.zip",
                      checksum: sapODataChecksum),
        .binaryTarget(name: "SAPOfflineOData", url: "\(root)/foundation/SAPOfflineOData/\(version)/SAPOfflineOData-\(version)-Release-xcframework.zip",
                      checksum: sapOfflineODataChecksum),
        .binaryTarget(name: "SAPML", url: "\(root)/uireuse/SAPML/\(version)/SAPML-\(version)-Release-xcframework.zip",
                      checksum: sapMLChecksum)
    ]
)
