// swift-tools-version:5.9

import PackageDescription

let version = "10.0.7"
let root = "https://rbsc.repositories.cloud.sap/nexus3/repository/maven73554900100900008062/ios"

let sapCommonChecksum = "d6ba18024e941b64424a04691f36a874763f53dcadd2e4fd0268bb692e0fe2c5"
let sapFioriChecksum = "05be5caf78076a838c9f3d8c10461743d6971e27b543288e6d5215a1bdf07e4e"
let sapFioriFlowsChecksum = "9b8235bd9f929b9b5774fd637f22bac3cb707107389b1a89e2f5e4c029771d09"
let sapFoundationChecksum = "9d493ecd1cf5f2e39b3b651669e92ded04fd42b3adbbd0cdb346224c0c0c25ff"
let sapODataChecksum = "c19cc851e42ed1d60d03fef755296aa5a12e1ae5af0c3921d0388bba1199a73b"
let sapOfflineODataChecksum = "df2c8717c14ef93eec7217a3dfbed4929a77e6aa8b3ab22f2882ded2b4c2ce4f"
let sapMLChecksum = "d8aa61a10b87e96dbdba6db0058f991804787d786b4342176c1d1fd06446fcc7"

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
