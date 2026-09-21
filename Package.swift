// swift-tools-version:6.0

import PackageDescription

let version = "26.4.7"
let root = "https://rbsc.repositories.cloud.sap/nexus3/repository/maven73554900100900010451/ios"

let sapCommonChecksum = "bc6dbbd7ac8067300be45070dd1b53c1403098e228a0c8c59833c52ee1fd91f4"
let sapFioriChecksum = "e8c9ecf61cf21bdbf2e388834fc39afbce05f93d4815b027596b07373eda4055"
let sapFioriFlowsChecksum = "2157365d97436cea5b9a353d415bcc9b098a4b845c66c2cf0ed6f0d92b4bd66a"
let sapFoundationChecksum = "e71750d1d95a50692d3c3d82ba81a673444ee1704d530767acd7b47de43b6c96"
let sapODataChecksum = "94abff707593e928d4807cd29f40c081e5346bc7b333ab2d776975215130c5d5"
let sapOfflineODataChecksum = "3559dfa7e42920eb1dfe42bd9a614d04853a29b122d5abce28f4f742008eb89c"
let sapMLChecksum = "f447abc2f3559a9957c7afca561043551b1f84567f2d9a6019c4d10fc7f287fe"

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
