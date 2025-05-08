// swift-tools-version:6.0

import PackageDescription

let version = "25.4.1"
let root = "https://rbsc.repositories.cloud.sap/nexus3/repository/maven73555000100900007915/ios"

let sapCommonChecksum = "c4b1bf5e68479ad8799a38f6268adbf7c84f0d705fadf8dc6921e33bc1bd2093"
let sapFioriChecksum = "f90d81cd770fe1a375b9ae119c61973d25eec35bf5b11f89bb84f9200234a4e0"
let sapFioriFlowsChecksum = "5a2424608346cd48e8cde39e585395aaa73850c06b50cfde513b9e28b3d06941"
let sapFoundationChecksum = "890f8d2f716890b760c023fb977497b8693f9b4ea63bb247e980bb92b2014da1"
let sapODataChecksum = "f811ae4146e1049de1637f27f284bf3b9517129fd4eca5ebbc271d51dc885c5f"
let sapOfflineODataChecksum = "db7ba5f70e22bae7bf8a009c958350f8887e0f7add48f7cd0689eaf4787d1c4a"
let sapMLChecksum = "112f6d57c3093ab4b2db3aeda4f1463435cb862a034465a0df53498929e19d45"

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
