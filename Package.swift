// swift-tools-version:6.0

import PackageDescription

let version = "25.11.4"
let root = "https://rbsc.repositories.cloud.sap/nexus3/repository/maven73555000100900007915/ios"

let sapCommonChecksum = "78c28415d2666be00e167f5fb6aca2e44f1aad68f2d76f12af9e7144d0e54420"
let sapFioriChecksum = "51cd685928951eef6e7f721887a029c0ef464014db3846150aec2773d79db4d5"
let sapFioriFlowsChecksum = "c93426a33e15f18a2143d864229b285eefbeade761b25cc80151cdbe2d83b86c"
let sapFoundationChecksum = "b9ada4cb981717479095694019bd8c7f1611421207a40e9cc7187989fe525190"
let sapODataChecksum = "f517a8cfd11c7d8642cc0fa211df3b1042c22c852e63d668bdba57c0fa63c5e2"
let sapOfflineODataChecksum = "35ec567f700bd038f0483f721c244bfae1dba13157e8124fd2f6d6d9c3aaf03b"
let sapMLChecksum = "15d091dbf42ed3b71be046a1a97114947ec747b035604db91b8b8b2f5797bc6f"

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
