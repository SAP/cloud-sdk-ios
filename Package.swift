// swift-tools-version:5.9

import PackageDescription

let version = "24.8.1"
let root = "https://rbsc.repositories.cloud.sap/nexus3/repository/maven73555000100900007915/ios"

let sapCommonChecksum = "04c8dcaf2742f7089a1d8b2a634c10d5a5af74373638b5d02d476c5a82350926"
let sapFioriChecksum = "4acf394c547f855a7c0d8d98131c83d61a1b1ee3e48d5b6306a00aa734297f19"
let sapFioriFlowsChecksum = "0479151d4d76981bbb2cdfcec9448148c399d81d555e0635ddd787dd35201670"
let sapFoundationChecksum = "a74a07095f1bac352ffb85b84dcdcc9e1c3720e5bc2167c907f85c9c4c052381"
let sapODataChecksum = "be48cfac6c69c919f03b9c09eb44ee448857727b7faa237a879e540d14462744"
let sapOfflineODataChecksum = "3866dfe083c577c704d7cf088006cbed5dcae64c23e08f4a0a484babe01e2d76"
let sapMLChecksum = "cad784c73ede2f3f6d6b8c46d091163dcc3cb672d866ebc1b4bd22de7036aba1"

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
