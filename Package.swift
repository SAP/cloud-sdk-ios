// swift-tools-version:5.5

import PackageDescription

let version = "9.2.9"
let root = "https://rbsc.repositories.cloud.sap/nexus3/repository/maven73555000100900006345/ios"

let sapCommonChecksum = "e889ff926612b974a977db9bbfec82ade2c99f0d32adc96dda74a7d153053f4d"
let sapFioriChecksum = "2ee8feb2adbb8db4372f78246a01232777f4544667dac44097e4d04dcc581617"
let sapFioriFlowsChecksum = "40495094c70d4e169c7411e387a51086042faa3186b5721c05935f0f1a2148bb"
let sapFoundationChecksum = "0e474c3a6730bc921b4ca1f8250a1c5701fd169aa741caa6f9140a9f9fff96de"
let sapODataChecksum = "d622ad9e249ded3a50b17d184d113837a9fce9e90fa77f68644f570635e8c80d"
let sapOfflineODataChecksum = "6c31ded83c7afc3b6b816b79aaba23f6767298aa87443652ca1482aa528f5e62"
let sapMLChecksum = "5290532177437707cd1cf549c1537d46ce2717b3a832904e36f6442ba643fb1c"

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
