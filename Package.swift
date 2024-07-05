// swift-tools-version:5.9

import PackageDescription

let version = "10.0.6"
let root = "https://rbsc.repositories.cloud.sap/nexus3/repository/maven73554900100900008062/ios"

let sapCommonChecksum = "1e3292ea7c43f17f9fc04db848c2b332875203c3fd374218a43d739571aa98de"
let sapFioriChecksum = "035db0e874afd2ae6cbbf47adf799cf0a998e8e0a1daacf482ec3eb7efa36489"
let sapFioriFlowsChecksum = "9166f1dadbc1debaee506d66bb0affbeb0b7e45d8dad2afd7522d4b15f269ccd"
let sapFoundationChecksum = "770d71d7c398f651db7bf722d36f0c9da7650f37b478bd7fe10a2c195b6e5b86"
let sapODataChecksum = "81a648aeb9517935a3bf59ab10c52fea64bceff30606b3952328c651bec11f5c"
let sapOfflineODataChecksum = "2cf91b5ca0950920f68c3e1311d5df5e6558fa1f1e86f5bc039d4d15d8b09efc"
let sapMLChecksum = "d5a44d805060d85364bf9b3b906ff6d50abad52513e4fc673cff4bb89cea8504"

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
