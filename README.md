# cloud-sdk-ios

[![REUSE status](https://api.reuse.software/badge/github.com/SAP/cloud-sdk-ios)](https://api.reuse.software/info/github.com/SAP/cloud-sdk-ios)

**Overview of the Swift packages of the SAP BTP SDK for iOS**

The [BTP SDK for iOS](https://developers.sap.com/topics/sap-btp-sdk-for-ios.html) enables you to quickly develop your own native apps, with Swift. The SDK extends the standard Swift Apple iOS frameworks with the reusable UI components from the SAP Fiori for iOS Design Language, and provides APIs which seamlessly integrate apps with SAP BTP services.

The SAP BTP SDK for iOS frameworks and components are self-contained blocks of specific functionality, allowing developers to choose and implement only the components required for their mobile apps.

We are currently in the process of open-sourcing the following frameworks as Swift Packages:
- `SAPFiori` which enables [SAP Fiori for iOS](http://experience.sap.com/fiori-design-ios/) as a design language to unify iOS and SAP Fiori features to optimize the user experience in enterprise applications.
- `SAPFioriFlows` to develop complex but typical application onboarding scenarios.
- `SAPML` for developing machine learning features in apps, including drop-in UI components for text recognition, topology APIs for easy searching and filtering of text observations, and Core ML model management APIs for distributing custom Core ML models hosted on the SAP Mobile Services to the app.

We also currently developing a new set of open-source libraries directly as Swift Packages:
- `FioriSwiftUI` as the SwiftUI implementation of the SAP Fiori for iOS Design Language, and is meant to augment and in some cases replace the UIKit-based implementation contained in the `SAPFiori` framework. [Repository Link](https://github.com/SAP/cloud-sdk-ios-fiori)
- `FioriAR` as the implementation of argumented reality patterns, like [AR Annotations](https://experience.sap.com/fiori-design-ios/article/ar-annotations/), in the SAP Fiori for iOS Design Language. [Repository Link](https://github.com/SAP/cloud-sdk-ios-fioriarkit)
- `SAPCAI` to initiate and render conversations from SAP Conversational AI natively. [Repository Link](https://github.com/SAP/cloud-sdk-ios-cai)

Note: While in the transition phase we'd like to make the `SAPCommon` and `SAPFoundation` binary frameworks available in this Swift Package.

# Requirements

- iOS 13 or higher, macOS 10.15.4 or higher
- Xcode 12 or higher (`swift-tools-version:5.3`)

# Usage

Please declare package dpendency for the Swift packages by referring directly to them.

Adding this package will provide acces to the `SAPCommon` and `SAPFoundation` binary frameworks.

To add this package to your application target, navigate to the `File > Swift Packages > Add Package Dependency...` tab, then add the repository URL.
To add this package to your framework target, add the repository URL to your Package.swift manifest, e.g.

```swift
dependencies: [
    .package(url: "https://github.com/SAP/cloud-sdk-ios.git", .exact("6.1.2-xcfrwk"))
]
```
