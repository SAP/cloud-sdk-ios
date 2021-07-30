# cloud-sdk-ios

[![REUSE status](https://api.reuse.software/badge/github.com/SAP/cloud-sdk-ios)](https://api.reuse.software/info/github.com/SAP/cloud-sdk-ios)

**Umbrella package for frameworks of the SAP BTP SDK for iOS**

The [BTP SDK for iOS](https://developers.sap.com/topics/sap-btp-sdk-for-ios.html) enables you to quickly develop your own native apps, with Swift. The SDK extends the standard Swift Apple iOS frameworks with the reusable UI components from the SAP Fiori for iOS Design Language, and provides APIs which seamlessly integrate apps with SAP BTP services.

The SAP BTP SDK for iOS frameworks and components are self-contained blocks of specific functionality, allowing developers to choose and implement only the components required for their mobile apps

We are currently in the process of open-sourcing the following frameworks:
- `SAPCommon` and `SAPFoundation` framework components to integrate your app with the SAP BTP environment
- `SAPFiori` which enables [SAP Fiori for iOS](http://experience.sap.com/fiori-design-ios/) as a design language to unify iOS and SAP Fiori features to optimize the user experience in enterprise applications.
- `SAPFioriFlows` to develop complex but typical application onboarding scenarios.

We also currently developing a new set of open-source libraries directly as Swift Packages:
- `FioriSwiftUI` as the SwiftUI implementation of the SAP Fiori for iOS Design Language, and is meant to augment and in some cases replace the UIKit-based implementation contained in the `SAPFiori` framework (https://github.com/SAP/cloud-sdk-ios-fiori)
- `SAPCAI` to initiate and render conversations from SAP Conversational AI natively 

**This umbrella package may serve as the central access point for those various Swift Packages**

Note: While in the transition phase we'd like to make the `SAPCommon` and `SAPFoundation` binary frameworks available in this Swift Package.

# Requirements

- iOS 13 or higher, macOS 10.15.4 or higher
- Xcode 12 or higher (`swift-tools-version:5.3`)

# Usage

You can refer to the individual packages or declare package dependency soley to this umbrella package.

To add this package to your application target, navigate to the `File > Swift Packages > Add Package Dependency...` tab, then add the repository URL.
To add this package to your framework target, add the repository URL to your Package.swift manifest, e.g.

```swift
dependencies: [
    .package(url: "https://github.com/SAP/cloud-sdk-ios.git", .exact("xcfrwk-5.1.3"))
]
```
