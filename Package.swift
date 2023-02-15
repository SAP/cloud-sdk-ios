// swift-tools-version:5.3

import PackageDescription

let version = "8.0.7"
let root = "https://rbsc.repositories.cloud.sap/nexus3/repository/maven73554900100900006843/com/sap/mobile/platform/client/hcp/sdk/ios"

let sapCommonChecksum = "25d7582140d23aef7a11590ee2bd655f9cf8d95d45dd37400ab399301ce16c54"
let sapFioriChecksum = "600a4d0f579a3d3c40ced222d3c52d23e37de74520f267775e02444dea5fa49f"
let sapFioriFlowsChecksum = "45cb2daeb4579023870b74f4734ea7e5f0934042acadc4fc0e0c3dc9edae7978"
let sapFoundationChecksum = "479a9d53e54febcfb445f4fe3c2eeab759bd07bce38ca4ceb181caf06be43f81"
let sapODataChecksum = "fdbb5147c8a2bc869ad940ccdbbbbc597fe06e30af8c3e5bbc20fafea2702ee9"
let sapOfflineODataChecksum = "298c46ab457e2bdc7ef6ee289ab6a356b26d9a9bb299e8734a903e6f8b524a00"
let sapMLChecksum = "5067fa83bf3fff213dbffe6d99e83641bb9633bb5b74feb7b96de0f701c6c6cb"

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
