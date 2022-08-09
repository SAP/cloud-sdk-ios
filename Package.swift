// swift-tools-version:5.3

import PackageDescription

let version = "8.0.1"
let root = "https://rbsc.repositories.cloud.sap/nexus3/repository/maven73554900100900006843/com/sap/mobile/platform/client/hcp/sdk/ios"

let sapCommonChecksum = "8faee05f9222aafcb1cd3a57f35b531e2e6f9ebf2cdfa8881fc45524fb7e6f19"
let sapFioriChecksum = "83cb1d294f83b521f6208ec4aa5d7af253b4b2922efab515eae5f8ea36453fc7"
let sapFioriFlowsChecksum = "e2375c2f6c2b5c03b7d26a67eeed31a7101a280ba22f26decbc34097473021c6"
let sapFoundationChecksum = "3309d1fb33a749666714a509810d2aa86c83588ac1d6d74644428395c6c15ce3"
let sapODataChecksum = "a35534143a728b7e3dc473435e00e057499e12d9465a434458af57f8f75b8e6a"
let sapOfflineODataChecksum = "e6ee779aae081b5f545447e7e8e947948b8a39285454f1e68fece4a70e9125df"
let sapMLChecksum = "1f0ac27acf26b8aaafa02e202d0b406c6ff70d9228d6915baad27abb05bcb409"

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
