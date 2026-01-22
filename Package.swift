// swift-tools-version:6.0

import PackageDescription

let version = "26.1.0"
let root = "https://rbsc.repositories.cloud.sap/nexus3/repository/maven73555000100900007915/ios"

let sapCommonChecksum = "b721fe16016d389cd5ab5eec750de817c81632b095b164e78b4d3c338954a16f"
let sapFioriChecksum = "f74592c5499f507e147f44405526254200657e5d9b19a30e8ce84c6e72a34a73"
let sapFioriFlowsChecksum = "e1aba587850f773c9532a6877c725bd4116a4e997c14766a008c7bb9b9706693"
let sapFoundationChecksum = "5bf5238dd7220da889ae5eb667e551fdbe56e2b3f902fbe097cc6760c52fa1eb"
let sapODataChecksum = "3cec502a2359864c14e138aaca9a3fbae4589edb93ae62ab3a9272e247d4c1b4"
let sapOfflineODataChecksum = "e35918d3d6a3dbfdcedb58fd0f7d1fe3606c91ee31e133c5ab070392d7383d4b"
let sapMLChecksum = "3411c22758272b657e9a86ece45a64b9a23b1d391292bf4cbbedac4bcee1d455"

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
