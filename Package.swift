// swift-tools-version:5.3

import PackageDescription

let version = "8.0.0"
let root = "https://rbsc.repositories.cloud.sap/nexus3/repository/maven73554900100900006843/com/sap/mobile/platform/client/hcp/sdk/ios"

let sapCommonChecksum = "18398ec3d2f05e76fed464cf8e0553a73e8ef3ffd82f18a3b133fef93d5e60df"
let sapFioriChecksum = "2f6fc4c5790db663f250709a8f4b5aa24bfe92d6c9a624fa04466002d8ae6cf3"
let sapFioriFlowsChecksum = "4e32b6c28281461484f7f94f0925859276d780064cdcd4dbc3678fefe0b0574f"
let sapFoundationChecksum = "03f7b0344f90565405ba59d9b79adbc52578cb86f022668956ead65579407721"
let sapODataChecksum = "bdd76a2093bfae66fb63f937abe0b3bc21f1cc8a60fe92b358ebff2c5d2be8b3"
let sapOfflineODataChecksum = "b3921022b17df8d5eb111b81ecb6461f504c680f592453a4dd5f4e9d8bf356a2"
let sapMLChecksum = "403dd978b09d314f039e4732ea420a3dcecb026b19af22b977eeb31ba0989065"

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
