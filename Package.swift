// swift-tools-version:6.0

import PackageDescription

let version = "25.8.4"
let root = "https://rbsc.repositories.cloud.sap/nexus3/repository/maven73555000100900007915/ios"

let sapCommonChecksum = "3beda9114abfbde33849a47fd9a82b88e6b237c593cb6dc9f6cd6a939e455044"
let sapFioriChecksum = "9d3eb3534b028b15f30595e2f4c5bb148359c131cb27b3d247fd73b1e53c0fcb"
let sapFioriFlowsChecksum = "2619b09c82ed1bbe832855f19ce75d4611b1ae4ae2019fa1d4b3e76c458df3e1"
let sapFoundationChecksum = "ad54cce31c0287f42ffc1a269e648ca84c677e6f9443dc9745dede4e0dad1a08"
let sapODataChecksum = "9c29b3d8bc4d812a7e6a828b0a4daf0c23ac5a0db8bd9aaf959e8dea2074822c"
let sapOfflineODataChecksum = "2092ef74bd4075aa3c606bdb3391fd93009bf6a5e51524a5c978ec1da553399c"
let sapMLChecksum = "24067d1e9ce40eac21baaa2f19e7d3f7921526af6d2611a87bfc8f3459506577"

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
