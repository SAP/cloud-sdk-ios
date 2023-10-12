// swift-tools-version:5.5

import PackageDescription

let version = "9.2.4"
let root = "https://rbsc.repositories.cloud.sap/nexus3/repository/maven73555000100900006345/com/sap/mobile/platform/client/hcp/sdk/ios"

let sapCommonChecksum = "4a65e135db2e2865b5d737796270f54b5fb2308952e73546ab52d2f3bb0e1ff4"
let sapFioriChecksum = "79e9f6f6ea6a46af0fe4f7a668bf7ea33d025b859f30b0aa98d44e6ec28878e8"
let sapFioriFlowsChecksum = "86b23bb776bf597b106503a394ffdb67c13ab0da11eae2ed06bd9ddd6e2f1bef"
let sapFoundationChecksum = "32a2dd65aedf0cf3fe372a1c74774bda2399eacd728314a7bb94d74a916d7fe8"
let sapODataChecksum = "55b411f49e168823b337d11eeedee627172f5b3dc4bb0d1075b26b5e672fba92"
let sapOfflineODataChecksum = "aebf4e6863c897aa5918068ede05b7a893f884691d330a25f029a22cb27814fb"
let sapMLChecksum = "8592c1a646aae5dabf6053e0afaeaebf1f72426b00a85a89b9c4d2c44e5f0722"

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
