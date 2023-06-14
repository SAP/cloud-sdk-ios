// swift-tools-version:5.5

import PackageDescription

let version = "9.2.0"
let root = "https://rbsc.repositories.cloud.sap/nexus3/repository/maven73555000100900006345/com/sap/mobile/platform/client/hcp/sdk/ios"

let sapCommonChecksum = "53830d601c39a24b22a8fb7c2107c46ff9b24565bc9eee815d7fdba95a57198c"
let sapFioriChecksum = "e938c87f92388b2774168feac38fb1bfb19ec86b84c66443ccb09a59baa23d12"
let sapFioriFlowsChecksum = "cf1c6deb4096ca4143d1f1a95a4290992bf2485c855681dd1a910c627425c145"
let sapFoundationChecksum = "36fbed32785a9263209e863d723db45d941eb4bcb3cd59b3c43b778c39035211"
let sapODataChecksum = "91549973c7a766fc59fe17b4fca5c4753976533f0f92e589ba86fdb3775f7159"
let sapOfflineODataChecksum = "6c45d372d0e363681dcc0a0bb2289f6e1c9e2c74c2b4edabc88e51ef0f11b53b"
let sapMLChecksum = "f046a7a685f007cd9ed62c407d347bef0ae325f1daaf383e264eec3fdda57394"

let package = Package(
    name: "cloud-sdk-ios",
    platforms: [.iOS(.v15)],
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
        .binaryTarget(name: "SAPCommon", url: "\(root)/foundation/SAPCommon/\(version)/SAPCommon-\(version)-Release-xcframework.zip",
                      checksum: sapCommonChecksum),
        .binaryTarget(name: "SAPFiori", url: "\(root)/uireuse/SAPFiori/\(version)/SAPFiori-\(version)-Release-xcframework.zip",
                      checksum: sapFioriChecksum),
        .binaryTarget(name: "SAPFioriFlows", url: "\(root)/flows/SAPFioriFlows/\(version)/SAPFioriFlows-\(version)-Release-xcframework.zip",
                      checksum: sapFioriFlowsChecksum),
        .binaryTarget(name: "SAPFoundation", url: "\(root)/foundation/SAPFoundation/\(version)/SAPFoundation-\(version)-Release-xcframework.zip",
                      checksum: sapFoundationChecksum),
        .binaryTarget(name: "SAPOData", url: "\(root)/foundation/SAPOData/\(version)/SAPOData-\(version)-Release-xcframework.zip",
                      checksum: sapODataChecksum),
        .binaryTarget(name: "SAPOfflineOData", url: "\(root)/foundation/SAPOfflineOData/\(version)/SAPOfflineOData-\(version)-Release-xcframework.zip",
                      checksum: sapOfflineODataChecksum),
        .binaryTarget(name: "SAPML", url: "\(root)/uireuse/SAPML/\(version)/SAPML-\(version)-Release-xcframework.zip",
                      checksum: sapMLChecksum)
    ]
)
