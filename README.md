# Swift Packages provided by the SAP BTP SDK for iOS

[![REUSE status](https://api.reuse.software/badge/github.com/SAP/cloud-sdk-ios)](https://api.reuse.software/info/github.com/SAP/cloud-sdk-ios)

The [BTP SDK for iOS](https://developers.sap.com/topics/sap-btp-sdk-for-ios.html) enables you to quickly develop your native apps with Swift. The SDK extends the standard Swift Apple iOS frameworks with the reusable UI components from the SAP Fiori for iOS Design Language. It provides APIs which seamlessly integrate apps with SAP BTP services.

The SAP BTP SDK for iOS frameworks and components are self-contained blocks of specific functionality, allowing developers to choose and implement only the features required for their mobile apps.

We are currently in the process of open-sourcing the following frameworks as Swift Packages:
- `SAPFiori` enables [SAP Fiori for iOS](http://experience.sap.com/fiori-design-ios/) as a design language to unify iOS and SAP Fiori features to optimize the user experience in enterprise applications.
- `SAPFioriFlows` to develop complex but typical application onboarding scenarios.
- `SAPML` for developing machine learning features in apps, including drop-in UI components for text recognition, topology APIs for easy searching and filtering of text observations, and Core ML model management APIs for distributing custom Core ML models hosted on the SAP Mobile Services to the app.

We are also currently developing a new set of open-source libraries directly as Swift Packages:
- `FioriSwiftUI` as the SwiftUI implementation of the SAP Fiori for iOS Design Language, and is meant to augment and, in some cases, replace the UIKit-based implementation contained in the `SAPFiori` framework. [Repository Link](https://github.com/SAP/cloud-sdk-ios-fiori)
- `FioriAR` as the implementation of augmented reality patterns, like [AR Annotations](https://experience.sap.com/fiori-design-ios/article/ar-annotations/), in the SAP Fiori for iOS Design Language. [Repository Link](https://github.com/SAP/cloud-sdk-ios-fioriarkit)
- `SAPCAI` to initiate and render conversations from SAP Conversational AI natively. [Repository Link](https://github.com/SAP/cloud-sdk-ios-cai)

We published a Package Collection that lists all of our Swift Packages. Read the next chapter for more details.

# Using Package Collection in Xcode 13

In Xcode, choose <kbd>File</kbd>, then <kbd>Add Packages... </kbd>. Click the <kbd>+</kbd> > button, choose <kbd>Add Swift Package Collection</kbd>, paste [this URL](https://raw.githubusercontent.com/SAP/cloud-sdk-ios/main/collection-signed.json) and click <kbd>Load</kbd>.

You can now add packages from our collection to your project by selecting one and clicking <kbd>Add Package</kbd>.

# Note about Swift Package cloud-sdk-ios
App developers do not need to add package `cloud-sdk-ios`. 

Maintainers of SAP BTP SDK for iOS might add this package as a dependency to other Swift Packages to gain access to the `SAPCommon` and `SAPFoundation` binary frameworks.
