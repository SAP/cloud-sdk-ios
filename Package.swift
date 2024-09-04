// swift-tools-version:5.9

import PackageDescription

let version = "24.4.4"
let root = "https://rbsc.repositories.cloud.sap/nexus3/repository/maven73554900100900008403/ios"

let sapCommonChecksum = "4432d9146220583cb2eb2bc590b728601c56ea464b182608cc707dc039ca76d0"
let sapFioriChecksum = "45a5b783d4935b4d01398c155438b52fa604eafe009315c1de698d6d5d078a67"
let sapFioriFlowsChecksum = "01a546332184924f263f292586f445b5e6b8c4e16abac7afec743376705a736e"
let sapFoundationChecksum = "c418e2f5e6e3f096257333c407e16ace618628d3cd762b1e4eae950f62935ff5"
let sapODataChecksum = "eb629ad4452048869a8be675544f97c19b19d064c356522c23729e399ed26546"
let sapOfflineODataChecksum = "647cebfebdddbe5b7dbb2c74d745e805847faefe217c80bf0d182c34b2d996ff"
let sapMLChecksum = "fba84f3b747152b02f707063ebf5c6a0ec2ec8205827af616036830244490fd4"

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
