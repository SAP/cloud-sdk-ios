// swift-tools-version:5.9

import PackageDescription

let version = "24.4.5"
let root = "https://rbsc.repositories.cloud.sap/nexus3/repository/maven73554900100900008403/ios"

let sapCommonChecksum = "654c72332cad3327fe57fd6634a77bb941fcee265d46fbb4798dcb50b4ae8f78"
let sapFioriChecksum = "4e7d5355b7933d5bb40cfc4f01ffa69e19d8e65edfd720890a344d7052840ee3"
let sapFioriFlowsChecksum = "9b7cc6b5a66148d075ece854a81dc0a833df5c98f5c89c44c7553fb595586256"
let sapFoundationChecksum = "7238ee52b4304af4035286857d07e0b17e9347267758ec47b4c27214b840e036"
let sapODataChecksum = "aa9c62573e7b2a3eaac8c2c223a210966e872883423a8d5ce721aabc15f6cc38"
let sapOfflineODataChecksum = "212643ea7b8093a86b429a984405c582fde3485c97a80a6504379d4f657f1728"
let sapMLChecksum = "b3041e6caeec4845feb89172d79e6fb25284f52dc0f8fa6a424b8351fa17cdaf"

let package = Package(
    name: "cloud-sdk-ios",
    platforms: [.iOS(.v16)],
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
