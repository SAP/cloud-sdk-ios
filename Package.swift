// swift-tools-version:6.0

import PackageDescription

let version = "26.8.4"
let root = "https://rbsc.repositories.cloud.sap/nexus3/repository/maven73554900100900010451/ios"

let sapCommonChecksum = "0abaa4f5d89f32d2f9917c68eb723c99d940aa677ea6eb21051545a00bd90aa4"
let sapFioriChecksum = "1748a5d24b08909a4a44f3f617b4510cfbf29f195728039e59a6102c3c7067a9"
let sapFioriFlowsChecksum = "bfc9c4b32a3f2921b560f825bf754d8387d05da09473548ff547aaf3e893a159"
let sapFoundationChecksum = "11758c151459aad810555218ea4682d840cdf97d1988490006f820d88ccedb83"
let sapODataChecksum = "9eb7e7a186b6042f22e6ae3db2bb20ee9ae6bfc4c0e59017626ac7c6d6acb52c"
let sapOfflineODataChecksum = "a230367c52004d9b2139778eb154c28b5aa035c0407a6e310c3856ad34f101e3"
let sapMLChecksum = "c4ba96131ce0d3f61f8f3af86f17aa23f8442b23acb6d92cf85800b057ec199c"

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
