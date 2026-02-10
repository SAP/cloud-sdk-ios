// swift-tools-version:6.0

import PackageDescription

let version = "25.8.6"
let root = "https://rbsc.repositories.cloud.sap/nexus3/repository/maven73555000100900007915/ios"

let sapCommonChecksum = "de1b16e731529db76343a8a086f8cd798af491dbd4eb2110c8a5d2716cc56ca7"
let sapFioriChecksum = "ad925e8a568729df6d2d0083aad5c501a28eeb59adad6421f280e2fc07013cd2"
let sapFioriFlowsChecksum = "f3e5122b965555facd7ca14e61d6e798c583e4b8fd998c8436e326d335b4ce34"
let sapFoundationChecksum = "51c0939b0e26060b683882b5290f782bc00673b4f31447c066d61668daa32511"
let sapODataChecksum = "ef2d2f667a2ac06badf0dc736d84703add52701127e69a4f7b3723eba54cd7f9"
let sapOfflineODataChecksum = "2657a25dc9933ab94e0448d15e4fbe15b038a9758c33920258e9e37152a77fb9"
let sapMLChecksum = "df07e9fc0b7873523c6a62f0213e29e1fd09f8b485fb879c8c5de20236fee911"

let package = Package(
    name: "cloud-sdk-ios",
    platforms: [.iOS(.v17)],
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
