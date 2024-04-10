// swift-tools-version:5.9

import PackageDescription

let version = "24.4.0"
let root = "https://rbsc.repositories.cloud.sap/nexus3/repository/maven73554900100900008403/ios"

let sapCommonChecksum = "782d4eb505056f4fad56b79f7cd88f9bbb7578c908f5c9ae1b6f2d1c8074bfb2"
let sapFioriChecksum = "bdd16ef26015802bf0557abbd2c74a79cd2e437721ddc9dc44f8766666cab8a4"
let sapFioriFlowsChecksum = "0eb3ea55013898c8232eae6c9510b569ef90b1ff68ddfdb96b176308cd4baaa9"
let sapFoundationChecksum = "b32d7092695a402ce89acdd0a860e40fcf3901c1c0c106a102b72a6feb03ba8c"
let sapODataChecksum = "2832ff59d67161a28a784e8c7440025b6cdcf2f10732fc2d6a8ad2637c7861df"
let sapOfflineODataChecksum = "2ed194bcea90b6efda06b0839eaa8b74ac714e5932ff9c5d1acdfcbc072c3718"
let sapMLChecksum = "ee16ea2c5ef58382b85d8fffaa6991a1ed78fbd9ba037ca05833c8841e825b7a"

let package = Package(
    name: "cloud-sdk-ios",
    platforms: [.iOS(.v16)],
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
