// swift-tools-version:6.0

import PackageDescription

let version = "26.1.2"
let root = "https://rbsc.repositories.cloud.sap/nexus3/repository/maven73555000100900007915/ios"

let sapCommonChecksum = "992ce5d4d0f5b9db509b1411d3373078e26672e798354ea642ab81a633f5193e"
let sapFioriChecksum = "202eb26df14215da30d322df6849dbf275d0682a55aa08572c9a69cc2db2872a"
let sapFioriFlowsChecksum = "6a5e127ca569a221532ac791657b38055aff53058eadb16d06ec2b1d33660d58"
let sapFoundationChecksum = "e54a8171db16ab19b55534d1dc3bfdcec487c8b7d93ce94bf7f962236b418c23"
let sapODataChecksum = "8fa56d4948b2ae478b2fe46113de2c3d81601a3b3f0931cc4ca4d5eb93562b3b"
let sapOfflineODataChecksum = "1aa2ea4b4f9974040586bcf6045645652824df34fad4f4d9e5635f7a27d6f351"
let sapMLChecksum = "8016bef9a9574c745de5612d7a092623dfe5997b335089b058485b20d3eec411"

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
