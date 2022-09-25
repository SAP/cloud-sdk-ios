// swift-tools-version:5.3

import PackageDescription

let version = "8.0.3"
let root = "https://rbsc.repositories.cloud.sap/nexus3/repository/maven73554900100900006843/com/sap/mobile/platform/client/hcp/sdk/ios"

let sapCommonChecksum = "a1be06883fc7c8f94b2a848515e4de6878925904a4012d344d18f5af14562b96"
let sapFioriChecksum = "d2736e6caeb6e443c49f5f35c7036660c46ce278433bbe6d1a973b8d1d67c9aa"
let sapFioriFlowsChecksum = "2d06741f7887db02ea8a9145e1af3668523ee169ab5b865b46d5ffca79bf36b2"
let sapFoundationChecksum = "72a362f5697a848fcd81bf38c50e8f5e2da35b7de2722bf6f20cbd45259dbad0"
let sapODataChecksum = "cc84fa213f356eeae44721c43c2c27948c5d09cafa02cd6ba57f6c4d7a461ea8"
let sapOfflineODataChecksum = "11ba146fe38c055c0ba7d884d6cf35b570302b0b9940ec47c3891eeadeeee21c"
let sapMLChecksum = "23b8ee7fe0144d0956b4f3e46fef4f3ae29237e891f4980678d079f151cbbd14"

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
