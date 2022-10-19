// swift-tools-version:5.3

import PackageDescription

let version = "7.0.10"
let root = "https://rbsc.repositories.cloud.sap/nexus3/repository/maven73555000100900005862/com/sap/mobile/platform/client/hcp/sdk/ios"

let sapCommonChecksum = "df03c0138a5b121c5e5a45db70173aeef7dba7af27ed39598b217b2528018d7a"
let sapFioriChecksum = "a3569a8c36bf1ca20f58e26791fb67feb4973ade3dd9ad4634abeee03b092aa3"
let sapFioriFlowsChecksum = "b0e086b8acc08e4e25f5b7720ee1e414c6725658e8968fd1223ef4237e8a411f"
let sapFoundationChecksum = "ecd3679e1ff0092637ae7eb8baeaa7c62e6a23b59a26d71679a68aa592afbf0e"
let sapODataChecksum = "f4ac29df6ba01aa3d630efcaf8921b486e2377201c0baeaa702143bc9a5b4105"
let sapOfflineODataChecksum = "bc6c243cb1a56a2900f988affe40bdbe534dad7acde408b18a411e6c8e62534b"
let sapMLChecksum = "9c7aab0afba5398ce3ff642d9719a160654d6d000526a91649ef5e869e77d9e9"

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
