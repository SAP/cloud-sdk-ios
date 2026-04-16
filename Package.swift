// swift-tools-version:6.0

import PackageDescription

let version = "26.1.4"
let root = "https://rbsc.repositories.cloud.sap/nexus3/repository/maven73555000100900007915/ios"

let sapCommonChecksum = "aec33cbe7472bd07c2727376778bb455242c7a1b8ca59cf687d1a31fdf002270"
let sapFioriChecksum = "231919e273501daabb865f8458ad778b49ec9e73a5d0f852cc5a78bfe9f75547"
let sapFioriFlowsChecksum = "7a2b66cd32ce61324a27b0c0ca87e47257e62016d08223a95cb172aadeadf3a3"
let sapFoundationChecksum = "1763bb646cc66b440bafb8ef5b0bab445ba71baf4b0e0edf0d846740a3eb58c6"
let sapODataChecksum = "bf201d864e68e17eae5a6c9697a013cb7eba0ee36749be03a979ba63ac4efc82"
let sapOfflineODataChecksum = "a76b90b5056ab8ca07973b14d028daefe386f62705f646c4cbd941698027f9b3"
let sapMLChecksum = "fe6c98b80195e5def3fda42c1aed33836d2ed2bd6d3a6508331d6dd76ea20a5a"

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
