// swift-tools-version:5.9

import PackageDescription

let version = "10.0.2"
let root = "https://rbsc.repositories.cloud.sap/nexus3/repository/maven73554900100900008062/ios"

let sapCommonChecksum = "6a6cf7f41f41690a7b24099fc5dd9d3538bebea5cf42aa852b24ca3d935fb7e8"
let sapFioriChecksum = "6fda5c0ce18b2c0aa3133ff313a9eff6f1056b2d1c06318117984884b4873315"
let sapFioriFlowsChecksum = "644ed1d402fb1b8b5c212a768215ef90192cf9a952a45a5340b167c1e0cc5b13"
let sapFoundationChecksum = "90381e7143a1cfdc737eb6f011bc87152cfdab5b71ea472502f4961039d7a435"
let sapODataChecksum = "278ff2a981690769639a443a10685920ddf4b74e177cc90f07337898f9b3c47a"
let sapOfflineODataChecksum = "6a2c14dc9ac27aa1cf7e7e9f85b49f389abf6481e92cb39aa8d4aebfc23ea8b6"
let sapMLChecksum = "51b06f8c1ef19c55584fcc696ba9e7ddbe544cdf98da9f02e23575555e2df274"

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
