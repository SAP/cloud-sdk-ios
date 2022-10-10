// swift-tools-version:5.3

import PackageDescription

let version = "8.0.4"
let root = "https://rbsc.repositories.cloud.sap/nexus3/repository/maven73554900100900006843/com/sap/mobile/platform/client/hcp/sdk/ios"

let sapCommonChecksum = "c33d9dc6b6a25337f32aa5e138c9a29c94433d553e97bfe71c5a9c939a56653e"
let sapFioriChecksum = "c9ecdf04a62f5c4ccd053f3ed08ca0119ec4e49f1bbe2d8afdc82bb59e673ac7"
let sapFioriFlowsChecksum = "cc6314c8894f81f399575cbd532dbb5002d828d36751b1f3ae105a882e61ee32"
let sapFoundationChecksum = "da3608cc19df09b8f6935b3f6a61fadf77a20cd8a29b99a9befc7afa8be76b37"
let sapODataChecksum = "900a61658635b1c1d89d54e896a201f3808656911869baeace42a275f5b886ef"
let sapOfflineODataChecksum = "995bf8fa97f7c1971bb7022a68b5f6d37eff3cd9b5675c47c84ed2366bdaed8d"
let sapMLChecksum = "44beca684c951b5c490a64b9e68087ff33b42d2bfdffa9530fc7657054f02670"

let package = Package(
    name: "cloud-sdk-ios",
    platforms: [.iOS(.v14)],
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
