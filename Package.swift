// swift-tools-version:5.5

import PackageDescription

let version = "9.2.7"
let root = "https://rbsc.repositories.cloud.sap/nexus3/repository/maven73555000100900006345/ios"

let sapCommonChecksum = "c254e686db1c2e1d6eb640b11a31b8a135d532d3634e091ea16c8d7a64396979"
let sapFioriChecksum = "457c1a284c256c979ba22ff3e95f0c816fd7fdacc1f1feff0cb1d06d06f0c929"
let sapFioriFlowsChecksum = "a914af51e2ad62b6d16ffd90b7094d9723a2ea312812314fff6a1972fe3417c1"
let sapFoundationChecksum = "605dadd110b7872b94633aafb7adae8d7d0b7d9d8721d2b6779bf98a20967be1"
let sapODataChecksum = "b806b6c8feec7ca2f1da870c443185eda0f238d60281cfc3013a6f789b1eaa3f"
let sapOfflineODataChecksum = "ae681a85f936627992776d203abb97bb5f781e9fae6254d385414fa8c97ea21a"
let sapMLChecksum = "415692b0f338cf5956669d1b4df90ea3bb92270464a2ccbb873a6bdd6a7f94f0"

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
