// swift-tools-version:5.5

import PackageDescription

let version = "9.1.6"
let root = "https://rbsc.repositories.cloud.sap/nexus3/repository/maven73555000100900006345/com/sap/mobile/platform/client/hcp/sdk/ios"

let sapCommonChecksum = "3d1cdcf0cf1a921c62ecf105ed997ee8efe2b9edea992c99d3e8e64ff5c2c324"
let sapFioriChecksum = "7396dbdcfb3306f9fa8de838802d5d69edf30300578d7139235dadcf2a5980df"
let sapFioriFlowsChecksum = "70babc9ece0b6381df3643f6e4fb215b7ebd1f77f6a0e16a43100a26ef119777"
let sapFoundationChecksum = "6f381b9f8d68d35ebd5fa73eb159a4263963f036d58f176fc5f83d69dce6a57e"
let sapODataChecksum = "c04ee9a6f4ce10b0cf4a99566b6c2d9ece4c26ce96da300df3729cf668cc2728"
let sapOfflineODataChecksum = "2e441d950746d50a51cd1aadaffa48ff44c5b38237257cbf3c187d63d8445409"
let sapMLChecksum = "808129292bd1bda989fbbe6e0c55ea3e3b5785f4c7be3647434b243285f019d9"

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
