// swift-tools-version:6.0

import PackageDescription

let version = "24.12.11"
let root = "https://rbsc.repositories.cloud.sap/nexus3/repository/maven73555000100900007915/ios"

let sapCommonChecksum = "79f54ed94fd8f6132b8905f372bcb14ac8fc28c1e7f5e0142b1bbb13c5d22e89"
let sapFioriChecksum = "f5d6509c08ad95b4c86f02baaaae3ab228bc42f956e52e4771a44eec651ca868"
let sapFioriFlowsChecksum = "05d30a863dd8b39cc1a7558c90a2d45a5dca155f3cdaafa9de3995a1a8f1568e"
let sapFoundationChecksum = "202ad289d418485e20a657e6f09774dc7468f90b6569628740e7c60d63d52639"
let sapODataChecksum = "9e9028f1af5631b204faa60e50b13b4fe70f853c840afbebd403a60ab1c066ab"
let sapOfflineODataChecksum = "810d17f6a597511449a0a5cf27f8fc00e1249b53e970821f0c59a2aa31f17ddf"
let sapMLChecksum = "970e26bfbc88fcc98995e86a5bb9c41d17d7162c948fdae6efa83bd64cafe131"

let package = Package(
    name: "cloud-sdk-ios",
    platforms: [.iOS(.v17)],
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
