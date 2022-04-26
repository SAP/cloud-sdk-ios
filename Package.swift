// swift-tools-version:5.3

import PackageDescription

let version = "7.0.4"
let root = "https://rbsc.repositories.cloud.sap/nexus3/repository/maven73555000100900005862/com/sap/mobile/platform/client/hcp/sdk/ios"

let sapCommonChecksum = "80126f1ca54439db7ac07622a7733aff55b6eb611b73004e3a7c08edb2950414"
let sapFioriChecksum = "8e3cd8a89bf146a7292b7b59c9b0755b5042fb6b82b76fa9ed825e17ffdf5f45"
let sapFioriFlowsChecksum = "9320dadb5e1321d3f5418967037cfebba011815c2a1d750a7e0892f540cd8571"
let sapFoundationChecksum = "583df9d0cf9a87d19293c65916ace86230367a70b7579a0fd5708a0c8f870fa6"
let sapODataChecksum = "a5539b01f31f5e8db87a8849b4e8dce10c1f6a3a8d783774dc91d0e5b3b98b10"
let sapOfflineODataChecksum = "5b3158cd6bea8fc87a45ffcf28eaaff7529f4b8e0530ce658987727a41d7d3b9"
let sapMLChecksum = "9cb3474b69aa0c1a7a9634186aed36f462fc3297f49a7a2a057032d64a34505d"

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
