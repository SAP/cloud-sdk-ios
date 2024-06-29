// swift-tools-version:5.9

import PackageDescription

let version = "24.4.2"
let root = "https://rbsc.repositories.cloud.sap/nexus3/repository/maven73554900100900008403/ios"

let sapCommonChecksum = "06475a9cc10dcbfd5aab663ea0954c7658d73f6ff282e449928b60e92e31ae17"
let sapFioriChecksum = "161564f3da5560be7109681ce26d6d6cb8f446bdf3f3a99f710ec3fa27112e6b"
let sapFioriFlowsChecksum = "3ee42fa798aadaa16ac55493c59d4fdffcdf13317694dffe9702314125fa649e"
let sapFoundationChecksum = "231b0253a0beaac33d4db994da2753494c60df66df84f818e5adba04f9ab66ff"
let sapODataChecksum = "6416133a6a1ff184b5eceae2fc444b0ff9024614d98a4ee1ac138417a4bf7b69"
let sapOfflineODataChecksum = "cc53b9277c21382581c9aa745c8ca1d31d061979b1b69977442951c7e92c788d"
let sapMLChecksum = "0ae24a6c1ab288d591504758517f00af06c1231f7abaa0aea40913968b5757b0"

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
