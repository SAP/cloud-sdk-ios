// swift-tools-version:6.0

import PackageDescription

let version = "26.8.0"
let root = "https://rbsc.repositories.cloud.sap/nexus3/repository/maven73554900100900010451/ios"

let sapCommonChecksum = "df03921c1f0bb2525decc68f5313f95e1869730a89fa3316865984dfdac2ca5a"
let sapFioriChecksum = "48887621c6b17453b9e39f9ac85f19ae71e87c7df4aa544dcbd42ca83e00f46e"
let sapFioriFlowsChecksum = "b295d55c0466dcd9b845e1d98a5821e74dac0b869db76f0d24ebd4518862f8bd"
let sapFoundationChecksum = "e9decebb10b2763747bd52ef667e05d422bb6eba4dee497f6b6ef60773977b79"
let sapODataChecksum = "03767ed0ac9d3b5a6c46e611b1933aa943ea14a3267acf487a26afb14dccaeb8"
let sapOfflineODataChecksum = "ab1105b6b310ac88b55cac2af7a763e9f382c782c18d245b7e6ab3fda912775d"
let sapMLChecksum = "34f6bc073841ccff30836bf477914f84a99a3e9fbf410ff90d416126b3f4e3e7"

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
