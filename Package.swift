// swift-tools-version:5.9

import PackageDescription

let version = "10.0.5"
let root = "https://rbsc.repositories.cloud.sap/nexus3/repository/maven73554900100900008062/ios"

let sapCommonChecksum = "b54e30161f7e300929cbd95121d339ad543f1587b4e32aa032d8b9f09fe023f5"
let sapFioriChecksum = "c25e3098225c3e99b557b37be06b0268f4755cd568e3cdae6c83b515b6bcd253"
let sapFioriFlowsChecksum = "58f2ff9b33c0033d23ea0cbc3fc63b424a5186f8838293090885a0327fd34d2a"
let sapFoundationChecksum = "fbc8fd43ef97a3b18ade6039346f05d7b3ca994003a05b89851bfa3aa50da3d4"
let sapODataChecksum = "8e5bd08b2a6849e6099fe20f5fdaa0d2eb98d23369f835c24b5e2f035b47174d"
let sapOfflineODataChecksum = "69ca159ffaf9ba5d7701bf6003239f8cf4f6c9f3a8208e3684391577513ff349"
let sapMLChecksum = "4a6c263e8e8e7ed95adb8bb88f7e7e2729db9f387b117c492eb5a670747ea901"

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
