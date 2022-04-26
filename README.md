# Swift Packages provided by the SAP BTP SDK for iOS

> This Swift Package distributes the SAP BTP SDK for iOS binary frameworks and informs you about related open-source Swift Packages.

[![REUSE status](https://api.reuse.software/badge/github.com/SAP/cloud-sdk-ios)](https://api.reuse.software/info/github.com/SAP/cloud-sdk-ios)

The [BTP SDK for iOS](https://developers.sap.com/topics/sap-btp-sdk-for-ios.html) enables you to quickly develop your native apps with Swift. The SDK extends the standard Swift Apple iOS frameworks with the reusable UI components from the SAP Fiori for iOS Design Language. It provides APIs which seamlessly integrate apps with SAP BTP services.

The SAP BTP SDK for iOS frameworks and components are self-contained blocks of specific functionality, allowing developers to choose and implement only the features required for their mobile apps.

The following **binary frameworks** can be consumed with this Swift Package through Apple's Swift Package Manager (SPM):
- `SAPCommon` includes commonly used service and logging components.
- `SAPFoundation` Includes general purpose components that integrate with both device and SAP Mobile Services features and capabilities, such as authentication, connectivity, caching, security, and so on.
- `SAPFiori` enables [SAP Fiori for iOS](http://experience.sap.com/fiori-design-ios/) as a design language to unify iOS and SAP Fiori features to optimize the user experience in enterprise applications.
- `SAPFioriFlows` to develop complex but typical application onboarding scenarios.
- `SAPOData` provides online access to exposed back-end OData services without any caching or local storage of data. This is best suited when the application requires up to date back-end data and has reliable connectivity.
- `SAPOfflineOData` retrieves back-end OData services when the app is online, then creates an Offline OData store which is initialized and populated with a list of defining queries. The store is persisted on the device (offline). Device users manipulate the local data (query, update, create, delete, and so on), then later upload the offline changes to the back-end. SAPOfflineOData provides additional functions required for Offline OData: creating the offline store, sending pending modification requests to SAP Mobile Services/back-end, refreshing the offline store as needed, removing data from and deleting the offline store and releasing resources after the last use of the offline store, and so on. An offline application is well suited when connectivity may become unreliable, or requires infrequent updates of back-end data.
- `SAPML` for developing machine learning features in apps, including drop-in UI components for text recognition, topology APIs for easy searching and filtering of text observations, and Core ML model management APIs for distributing custom Core ML models hosted on the SAP Mobile Services to the app.

*Note:* We are also currently developing a new set of open-source libraries directly as Swift Packages:
- `FioriSwiftUI` as the SwiftUI implementation of the SAP Fiori for iOS Design Language, and is meant to augment and, in some cases, replace the UIKit-based implementation contained in the `SAPFiori` framework. [Repository Link](https://github.com/SAP/cloud-sdk-ios-fiori)
- `FioriAR` as the implementation of augmented reality patterns, like [AR Annotations](https://experience.sap.com/fiori-design-ios/article/ar-annotations/), in the SAP Fiori for iOS Design Language. [Repository Link](https://github.com/SAP/cloud-sdk-ios-fioriarkit)
- `SAPCAI` to initiate and render conversations from SAP Conversational AI natively. [Repository Link](https://github.com/SAP/cloud-sdk-ios-cai)

## Configuration

### Obtaining Technical user & password

The SDK binaries are hosted in SAP's Internet-facing repository, which requires authenticated access. You must visit the [Technical Users' UI Home Page](https://ui.repositories.cloud.sap/www/webapp/) to obtain a technical username/password.  

 > SAP Customers & Partners:  use your **S-User** credentials

 > SAP Employees: use your **SAP email username & GLOBAL** credentials

<img src="https://github.com/SAP/cloud-sdk-ios-podspecs/blob/resources/gif/GetCredentialsFromRepo.gif?raw=true" width=600>

### Installing credential

Open, or create a new file at `~/.netrc`.

Add an entry which includes the username password credential pair, as follows:

```
machine rbsc.repositories.cloud.sap 
    login sap-xxxxxx 
    password xxxxxxxxxxxxxxxxxx
```

The **netrc** credential technique is a stand **cURL** API.  For complete documentation, see [gnu.org](https://www.gnu.org/software/inetutils/manual/html_node/The-_002enetrc-file.html).

## Usage

In Xcode you can add the Swift Package to your project by navigating to  <kbd>File </kbd> >  <kbd>Add Packages... </kbd> >. Use the <kbd>Search or Enter Package URL</kbd> field to find the package using the repository URL https://github.com/SAP/cloud-sdk-ios.

You can choose multiple of the following package products to be added to your application/framework target.

<img width="774" alt="ChoosePackageProducts" src="https://user-images.githubusercontent.com/4176826/163604677-00a3616b-a351-4a2f-abc8-d57bc87f40fb.png">

## Limitations

**This service is not available for Trial versions of the SDK.**

 > Quoting the SAP support site, *“you can download the SAP products that are associated with your S-user ID. While every visitor can browse the list of software products without any special permissions, downloading files requires the Software Download authorization; to request it, contact a user administrator in your company.”* This restriction also applies to the cloud shipment channel.

## Known Issues

None.

## How to obtain support

For an issue related to the contents of this repository, please [file an Issue](https://github.com/SAP/cloud-sdk-ios/issues).

For issues related to any of the referenced resources and binaries, please file a support ticket to SAP through the regular channels.

## Contributing

If you wish to make a contribution to the repository, please [submit a Pull Request](https://github.com/SAP/cloud-sdk-ios/pulls).  It will be reviewed by the maintainers, however, we cannot commit to merging all contributions.

### Maintainers: Updating the package

1. Ensure that your `.netrc` file is set up (see the [Configuration](#configuration) section above).
2. Clone / fork & clone the repository
3. Open [update_version.sh](./update_version.sh)
4. In line 3, change `VERSION="x.x.x"` to the version you want to update to. Please make sure the version is available in the [SDK cloud shipments](https://rbsc.repositories.cloud.sap/nexus3/#browse/browse:maven73555000100900005862)
   - Note: download URL and minimum deployment target may change with major release and has to be adjusted in script `update_version.sh` then.
5. Run the script
6. Make sure that the newly computed checksums are all different. If some checksums are the same it is an indicator for a failed download (e.g. file not present for this version)
7. Commit your changes and file a pull request

## Using Package Collection in Xcode 13

In Xcode, choose <kbd>File</kbd>, then <kbd>Add Packages... </kbd>. Click the <kbd>+</kbd> > button, choose <kbd>Add Swift Package Collection</kbd>, paste [this URL](https://raw.githubusercontent.com/SAP/cloud-sdk-ios/main/collection-signed.json) and click <kbd>Load</kbd>.

You can now add packages from our collection to your project by selecting one and clicking <kbd>Add Package</kbd>.
