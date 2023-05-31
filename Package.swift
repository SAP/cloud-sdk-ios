// swift-tools-version:5.5

import PackageDescription

let version = "9.0.7"
let root = "https://rbsc.repositories.cloud.sap/nexus3/repository/maven73555000100900006345/com/sap/mobile/platform/client/hcp/sdk/ios"

let sapCommonChecksum = "1d568c78fe98aa4eca95dc8f1eb246072de7bc323e00df7ed6bff1bf95743643"
let sapFioriChecksum = "ba8fcf9abe16d22c8d1906f2b83566d276c9d69a758e4d4b4f2d333b8f8ac8f9"
let sapFioriFlowsChecksum = "6e70b7ea771762c63146facfcd51828f93d484424cad9910a9123591eaa5b772"
let sapFoundationChecksum = "6a52521956d087d40b06e14dd7ab6f98494e88c0a605151f021e896c209a1bf3"
let sapODataChecksum = "e2297646fd16a28e0e2ba788eedfbb8b39395e6fb12aee98d311cefde89dc22a"
let sapOfflineODataChecksum = "9ca163acfd33381e19065bea402756a4b363b84299ac94edec3bb4ff5d332f8f"
let sapMLChecksum = "ca453c70d41fdf273fa1ef5a65f55fdef6250154791eb739541f628083723d61"

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
