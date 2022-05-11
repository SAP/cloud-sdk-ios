// swift-tools-version:5.3

import PackageDescription

let version = "6.1.16"
let root = "https://rbsc.repositories.cloud.sap/nexus3/repository/maven73554900100900005307/com/sap/mobile/platform/client/hcp/sdk/ios"

let sapCommonChecksum = "365e41c9c008725bcd5f9e85589be5ea041045f685dc51893fcc39370eda00eb"
let sapFioriChecksum = "d7cfb84ae1c7d683abbb9122d0cd34d305cef901ddcaa26dc691bc2ec7246c8a"
let sapFioriFlowsChecksum = "b90de5663b9e6c95c56afcac180f150409187d0da481db967a4409bf954deb1b"
let sapFoundationChecksum = "aaf01eee825f4810cdf2e7214b8be11f1a4dc1a402315dffeaf980e0dc738529"
let sapODataChecksum = "e363c2c29858a4d9f2e5c0ef8076ad28cb5dcf53b42720de152d7c50f1422c63"
let sapOfflineODataChecksum = "25818483e87af899b6b9be89b54b091f6319e66cf9cdb597b541e698faa44113"
let sapMLChecksum = "8bc4113ec59f139087303c00e7c7ed7622fb937b4d31bdd13436c63dcb35e65d"

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
