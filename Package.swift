// swift-tools-version:5.5

import PackageDescription

let version = "9.2.10"
let root = "https://rbsc.repositories.cloud.sap/nexus3/repository/maven73555000100900006345/ios"

let sapCommonChecksum = "0d7e494f602a65bec9365724b9e2958112b312491136cf32a9d99f141c9fc5b7"
let sapFioriChecksum = "20e6686473e459428c0f99ad000366fcc7d1248ea71560355850035834012172"
let sapFioriFlowsChecksum = "c427cd673a87c2e3f598fb484aed250708e2d087bef4130563b845ecb450e1d6"
let sapFoundationChecksum = "a55fc5e3ea1cbbeebd774a2c29f99b23b2351730ec398dee74fb6f4d85558043"
let sapODataChecksum = "6ce23f93cc2e1c6049bf33d065f99fd29ef6415398d21f72afc91068feadf5b9"
let sapOfflineODataChecksum = "5dd25521db96a166a278feda9d848642c39ae23d6703ab5867b3f3c26ae923de"
let sapMLChecksum = "7b3fcbf54a078ce313c96743bf8621c97943d716edc771aca6cb4526d8c3f4da"

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
