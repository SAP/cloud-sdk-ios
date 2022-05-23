// swift-tools-version:5.3

import PackageDescription

let version = "7.0.6"
let root = "https://rbsc.repositories.cloud.sap/nexus3/repository/maven73555000100900005862/com/sap/mobile/platform/client/hcp/sdk/ios"

let sapCommonChecksum = "f378289945516ca2bf99a35c553e967a2baeda1c023cf2f8c44e045dda94dd9a"
let sapFioriChecksum = "5c37540af4d6b92049fb155c25ebc273ef70d81f6d864cf26b93c6329d447728"
let sapFioriFlowsChecksum = "6dcf32accb58d339bc3a4642fd25f5f80117555c5e52aa56705005dfb96216d1"
let sapFoundationChecksum = "29181dda7823c234856e882d5221694bff0250a0fbff081ad1bbfeff8aec96a0"
let sapODataChecksum = "3c4d91f32f9731e805c1ea58fb97677d1d446c849abcccd26d2e7ac9e3649e0e"
let sapOfflineODataChecksum = "8f8cd593cb04f4e575611a1f7a7a52d0b1483bc84e2786f0c1414bf293945eee"
let sapMLChecksum = "751f08811ede78b335cd4c909f74e6e3fcb5fc24a8f63787ffa43a04202a15df"

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
