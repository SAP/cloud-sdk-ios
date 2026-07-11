// swift-tools-version:6.0

import PackageDescription

let version = "26.4.5"
let root = "https://rbsc.repositories.cloud.sap/nexus3/repository/maven73554900100900010451/ios"

let sapCommonChecksum = "5ff4d71e2f327cab00dd54aefafbded31580d82a7a03a3f0f817fc218f04a3fb"
let sapFioriChecksum = "19a5defcb874f5efad53677069b7301e93b279ef6dd73bec33406f2a7ce856af"
let sapFioriFlowsChecksum = "7f9753b709ccc3301348df8192a017a090d408dd2e3f6ffd61e0adcefc4028df"
let sapFoundationChecksum = "2f4948a2c441a0cdc283c0da28c09609c12e28092744270f6c1205eba9e55b3a"
let sapODataChecksum = "46f65f5bd63c081a3f329b188600c31f25c1cbcfa30bb07245eee3c997b36aac"
let sapOfflineODataChecksum = "5b455816a5df14bcfe6df2251d2d4b51e0029295eaadc56e190fcc38e45756cc"
let sapMLChecksum = "9befefbbe2c2837d12a8331f81ed84df0e77582e13e6333601e09a3f76e49d87"

let package = Package(
    name: "cloud-sdk-ios",
    platforms: [.iOS(.v18)],
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
