// swift-tools-version:6.0

import PackageDescription

let version = "26.4.6"
let root = "https://rbsc.repositories.cloud.sap/nexus3/repository/maven73554900100900010451/ios"

let sapCommonChecksum = "eedebe9771d8c16101c1d682190f7b4324475227d91fc04d08498165a66b6a13"
let sapFioriChecksum = "f55f455d668cccc55e3ea39a45216aec1ffa087b7372cbeaf8623983bde16bd7"
let sapFioriFlowsChecksum = "489b312ee91014261dd0d7a607d3e2a7fd2d650cbec0a6c4ad82e3f926cfb568"
let sapFoundationChecksum = "5976af9ccde8fd664766be0c843e76e770a514989c7370550ea7bba1e022d6ca"
let sapODataChecksum = "bdf32c3ca67a27eea25e359b7cead34b2509cd506625cb2aeea57e41cd88949b"
let sapOfflineODataChecksum = "40b299106c68a7736b0c1532b426e55be99d117a5c0f8e5b22fb6730d43168d1"
let sapMLChecksum = "4c4b0750f12d3aaba432147baf8d5e9bca16acd52cdca9bf35ea23e195298ffb"

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
