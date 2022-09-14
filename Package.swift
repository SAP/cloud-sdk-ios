// swift-tools-version:5.3

import PackageDescription

let version = "7.0.9"
let root = "https://rbsc.repositories.cloud.sap/nexus3/repository/maven73555000100900005862/com/sap/mobile/platform/client/hcp/sdk/ios"

let sapCommonChecksum = "260c683987c800ba38f1df54e690d9984dd2a821defd92458950f9611def47d7"
let sapFioriChecksum = "29f501b58a38cfa077cf98135d0ca3eaf08788c3d653e5a5c23e14f3722eb4f5"
let sapFioriFlowsChecksum = "0d3f4abccf56d7e80ae6e3a794a04a965155966fd602199616482f4b514b0910"
let sapFoundationChecksum = "55804b555db50d7faf41bfd9b71b4c820a14afc101316cb27fbd57a892221cf8"
let sapODataChecksum = "e8692417a2ddeaf6afdfaafa329ab7fa670ebe7b1dea6677560f085c5acf104b"
let sapOfflineODataChecksum = "ba7f2d3dd5a47bda30d122dd052021b9aa03b6efe99133eb76cfa0c3c48df18c"
let sapMLChecksum = "79bd19dc01901ed8d5138263f12fc34f35a1d9f2b147cb6f88e07d27a5928ab4"

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
