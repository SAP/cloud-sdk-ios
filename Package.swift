// swift-tools-version:5.9

import PackageDescription

let version = "24.4.1"
let root = "https://rbsc.repositories.cloud.sap/nexus3/repository/maven73554900100900008403/ios"

let sapCommonChecksum = "ab536efb4a8e92bdfc34e15064330634d771bee994364a86275dad20bf81895c"
let sapFioriChecksum = "a62b6e8c9810c1087946772b29efc5e18d17727b18ab2bf8bb9a34fc80ec8b4a"
let sapFioriFlowsChecksum = "3757476a8dd3032ca6731a5699c8d67c6c152a4a6b714c139abd0dbd406c2dd7"
let sapFoundationChecksum = "7f45441402dc1d405907037b6e36188da6184e2928ec2b7e7bd7f6cc5153dc9d"
let sapODataChecksum = "ad5161318637202ee23a0e49dba735f7de5560a1818f4e65615e736ca24285f0"
let sapOfflineODataChecksum = "dcbd97030d77345bac1ee10db181ff89023d976d3d7e47e08d8163174e95b689"
let sapMLChecksum = "2b4a51e937d398030825116d08867096b5613bf9ee0e61170a2fdd38c915d4fb"

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
