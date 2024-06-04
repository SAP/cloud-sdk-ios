// swift-tools-version:5.9

import PackageDescription

let version = "10.0.4"
let root = "https://rbsc.repositories.cloud.sap/nexus3/repository/maven73554900100900008062/ios"

let sapCommonChecksum = "d7aedc377f58a658f57dc4da68cb49332fe1200c8c324a8a4c05e4a6dd78b825"
let sapFioriChecksum = "20f65a5d05364e3a4fc048732338e4ffd097c32427ec67938b6878fb9fd03565"
let sapFioriFlowsChecksum = "5dcef4e17557bc4d6900e30d1b97b4b6080d52ca57e7725f0e49fba06bfb75a8"
let sapFoundationChecksum = "7faab891eac31b0436be0d4ca5c6250546015fc015f5716a965bb5908a6e6bc4"
let sapODataChecksum = "20a24d7b3caed825c7a389dd92b6177114009c29f88b478ea2ca48baf65b0e53"
let sapOfflineODataChecksum = "d6e4c60bff1a7ffacc56534e78787de273534155236dc68ef4c398a6fa982fb6"
let sapMLChecksum = "bdbc0514ce0867415216a5c9266d0af662fc6704cfd0274c750d121dfa2db905"

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
