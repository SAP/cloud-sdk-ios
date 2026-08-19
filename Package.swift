// swift-tools-version:6.0

import PackageDescription

let version = "26.1.8"
let root = "https://rbsc.repositories.cloud.sap/nexus3/repository/maven73555000100900007915/ios"

let sapCommonChecksum = "a766b6beb5c12b299782efef18a3ca7a45540f8817eca5efa052203fdd6d811e"
let sapFioriChecksum = "5e355e8045a2662e43b7768a4fe038aafc09c3a1376fbe8a2fe3b75267fc2b9a"
let sapFioriFlowsChecksum = "67808e67ae5f201fa8630e62ad247150b9c3e5c5f580aa2366d22f8aaf91aae3"
let sapFoundationChecksum = "c124d71172dec22fc7e17712bea001518a9c5165d9970e0f3fc3764523e54624"
let sapODataChecksum = "c4f255c8db123cbc5b3f7f0ef59fb3e13907fdc18bd47924896579b4b329f8ce"
let sapOfflineODataChecksum = "d68e0af57b1b4bcc19322eeb5748755e27b339adcb5b2b377d150ce371fc7d86"
let sapMLChecksum = "0054da9d58551260c42fd3f1d1a67c3506c3ca83b7fef601f9453eb24e973a22"

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
