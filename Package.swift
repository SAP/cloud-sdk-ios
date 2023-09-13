// swift-tools-version:5.5

import PackageDescription

let version = "9.2.3"
let root = "https://rbsc.repositories.cloud.sap/nexus3/repository/maven73555000100900006345/com/sap/mobile/platform/client/hcp/sdk/ios"

let sapCommonChecksum = "d04bdd1ff847f22cdefc92f49505c861e5597693a5e32abd4fa98c3a96c0c705"
let sapFioriChecksum = "6b0c586250d4208715272fb97639b3e9d2ef515ac0c915c711d204d68c7fddc5"
let sapFioriFlowsChecksum = "4f68ff7d8c9ce7d4d04524cf984b4a6bfa09f5a6017941d2dd2ab0db71fbe217"
let sapFoundationChecksum = "366c880c6a8f874d46ce4435d57eb968c19052a587c78fd4e390ebfd17d15b05"
let sapODataChecksum = "914cdd41f1ea5067c0206d76f009f442220fb35023a86bcdd5524c91e7ab9f3d"
let sapOfflineODataChecksum = "817054c1608b7f1112a1efa55adcd4ca5e39fa7d86f80f9af04a96f9d1198a59"
let sapMLChecksum = "117c9c70530d2e5d80962d0debcc807e7694b8a7442197aae1c8da441c024639"

let package = Package(
    name: "cloud-sdk-ios",
    platforms: [.iOS(.v15)],
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
