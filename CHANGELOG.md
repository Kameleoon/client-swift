# Changelog
All notable changes to this project will be documented in this file.

## 3.0.5 - 2023-07-17
* Added new conditions for targeting:
    - Visitor Code
    - SDK Language
    - [Device](https://developers.kameleoon.com/feature-management-and-experimentation/web-sdks/ios-sdk/#device)
    - [Conversion](https://developers.kameleoon.com/feature-management-and-experimentation/web-sdks/ios-sdk/#trackconversion)

## 3.0.4 - 2023-06-30
* Improved initialization process: The SDK no longer requires an explicit request for the data configuration during initialization. In the event of a failure, the SDK automatically uses the configuration stored in the device’s cache, where available, to ensure seamless operation.
* Improved the handling of internet connection loss for the [Real-Time Streaming Architecture](https://developers.kameleoon.com/feature-management-and-experimentation/technical-considerations/#streaming): We have resolved a critical issue related to the [Real-Time Streaming Architecture](https://developers.kameleoon.com/feature-management-and-experimentation/technical-considerations/#streaming). Previously, when the user’s device lost internet connection, the SDK was unable to receive configuration data until the next application launch. With this update, the SDK can now successfully retrieve the required configuration data once the connection is restored without restarting the application.

## 3.0.3 - 2023-06-08
* Fixed an issue where the SDK might not successfully subscribe for real-time configuration updates.

## 3.0.2 - 2023-05-26
* Minor improvements

## 3.0.1 - 2023-04-26
* Minor bug fixing

## 3.0.0 - 2023-03-24
* To enhance security, we have made it mandatory to include the **client_id** and **client_secret** fields in the Kameleoon configuration file. Alternatively, you can set these fields using the internal [`KameleoonClientConfig`](https://developers.kameleoon.com/feature-management-and-experimentation/mobile-sdks/ios-sdk/#additional-configuration) instance. By requiring these fields, we aim to ensure that only authorized parties have access to Kameleoon and its associated resources.
* Added support of new feature flag rules:
    - [`getFeatureVariationKey`](https://developers.kameleoon.com/feature-management-and-experimentation/mobile-sdks/ios-sdk/#getfeaturevariationkey)
    - [`getFeatureVariable`](https://developers.kameleoon.com/feature-management-and-experimentation/mobile-sdks/ios-sdk/#getfeaturevariable)
    - `activateFeature`-> [`isFeatureActive`](https://developers.kameleoon.com/feature-management-and-experimentation/mobile-sdks/ios-sdk/#isfeatureactive)
* Renaming of methods (old methods were removed)
    - `obtainVariationAssociatedData` -> [`getVariationAssociatedData`](https://developers.kameleoon.com/feature-management-and-experimentation/mobile-sdks/ios-sdk/#getvariationassociateddata),
    - `obtainFeatureAllVariables` -> [`getFeatureAllVariables`]https://developers.kameleoon.com/feature-management-and-experimentation/mobile-sdks/ios-sdk/#getfeatureallvariables),
    - `obtainExperimentList` -> [`getExperimentList`](https://developers.kameleoon.com/feature-management-and-experimentation/mobile-sdks/ios-sdk/#getexperimentlist),
    - `obtainFeatureList` -> [`getFeatureList`](https://developers.kameleoon.com/feature-management-and-experimentation/mobile-sdks/ios-sdk/#getfeaturelist), [`getActiveFeatureList`](https://developers.kameleoon.com/feature-management-and-experimentation/mobile-sdks/ios-sdk/#getactivefeaturelistforvisitor)
    - `retrieveDataFromRemoteSource` -> [`getRemoteData`](https://developers.kameleoon.com/feature-management-and-experimentation/mobile-sdks/ios-sdk/#getremotedata),
* Changes in returned errors:
    - `experimentConfigurationNotFound` -> `experimentNotFound`
    - `featureConfigurationNotFound` -> `featureFlagNotFound`
    - `notActivated` -> `notAllocated`
    - `variationConfigurationNotFound` -> `variationNotFound`
    - Added `variableNotFound`, `configurationInvalid`
* Added **KameleoonClientConfig**, it can be used as parameter during initialization of a client. Related to [`KameleoonClientFactory.create`](https://developers.kameleoon.com/feature-management-and-experimentation/mobile-sdks/ios-sdk/#kameleoonclientfactory)
* Added possibility for [`CustomData`](https://developers.kameleoon.com/feature-management-and-experimentation/mobile-sdks/ios-sdk/#customdata) to use variable argument list of values
* Added support of `is among the values` operator for Custom Data

## 2.1.3 - 2022-09-06
* Added method to obtain all variables for feature flag: [`obtainFeatureAllVariables`](https://developers.kameleoon.com/swift-sdk.html#obtainfeatureallvariables)
* Minor bug fixing

## 2.1.2 - 2022-08-16
* Added method to obtain a list of feature flags: [`obtainFeatureList`](https://developers.kameleoon.com/swift-sdk.html#obtainfeaturelist)
* Added method to obtain a list of feature flags targeted for specified visitor code: [`obtainFeatureListForVisitorCode`](https://developers.kameleoon.com/swift-sdk.html#obtainfeaturelistforvisitorcode)
* Added method to obtain a list of experiments: [`obtainExperimentList`](https://developers.kameleoon.com/swift-sdk.html#obtainexperimentlist)
* Added method to obtain a list of experiments targeted for specified visitor code: [`obtainExperimentListForVisitorCode`](https://developers.kameleoon.com/swift-sdk.html#obtainexperimentlistforvisitorcode)
* Added support for **Experiment** & **Exclusive Campaign** conditions. Related to [`triggerExperiment`](https://developers.kameleoon.com/swift-sdk.html#triggerexperiment)
* Added KameleoonData [`Device`](https://developers.kameleoon.com/swift-sdk.html#device) data. Possible values are: **PHONE**, **TABLET**, **DESKTOP**.
* Removed KameleoonData `Interest`

## 2.1.1 - 2022-06-14
* Fixed issue when tracking data wasn't sent with [`activateFeature`](https://developers.kameleoon.com/swift-sdk.html#activatefeature), [`triggerExperiment`](https://developers.kameleoon.com/swift-sdk.html#triggerexperiment) methods.

## 2.1.0 - 2022-05-13
* Added a new method [`updateConfigurationHandler`](https://developers.kameleoon.com/swift-sdk.html#updateconfigurationhandler) to handle events when configuration has updated data in real time.
* Added update campaigns and feature flag configurations instantaneously with Real-Time Streaming Architecture: [`documentation`](https://developers.kameleoon.com/swift-sdk.html#streaming) or [`product updates`](https://www.kameleoon.com/en/blog/real-time-streaming)

# Unsupported versions:

## 2.0.15 - 2022-04-12 `[Deprecated]`
* Added method for retrieving data from remote source: [`retrieveDataFromRemoteSource`](https://developers.kameleoon.com/swift-sdk.html#retrievedatafromremotesource)
* Remove `Data` alias to `KameleoonData`. Related to [`addData`](https://developers.kameleoon.com/swift-sdk.html#adddata)

## 2.0.14 - 2022-02-10 `[Deprecated]`
* Added support of multi-environment for feature flags, Related to [`activateFeature`](https://developers.kameleoon.com/swift-sdk.html#activatefeature), [`obtainFeatureVariable`](https://developers.kameleoon.com/swift-sdk.html#obtainfeaturevariable)
* Added checking for status of site (Enable / Disable). Related to [`activateFeature`](https://developers.kameleoon.com/swift-sdk.html#activatefeature), [`triggerExperiment`](https://developers.kameleoon.com/swift-sdk.html#triggerexperiment)

## 2.0.13 - 2021-12-10 `[Deprecated]`
* Fixed issue with overlapping periods for scheduling. Related to [`activateFeature`](https://developers.kameleoon.com/swift-sdk.html#activatefeature)
* Fixed issue with multiple adding CustomData with different values. Related to [`addData`](https://developers.kameleoon.com/swift-sdk.html#adddata)

## 2.0.12 - 2021-10-26 `[Deprecated]`
* Added scheduling functionality for [`activateFeature`](https://developers.kameleoon.com/swift-sdk.html#activatefeature)
* Fixed a issue with segment conditions, when only the first condition was taken into account and others are ignored. Also fixed issue when `is higher than` and `is lower than` had wrong result. Related to [`activateFeature`](https://developers.kameleoon.com/swift-sdk.html#activatefeature) and [`triggerExperiment`](https://developers.kameleoon.com/swift-sdk.html#triggerexperiment)

## 2.0.11 - 2021-08-31 `[Deprecated]`
* Fixed error with variation id for triggerExperiment for returning visitors
* Fixed when obtainFeatureVariable & obtainVariationAssociatedData throws wrong exception types
* Adding URI encoding for CustomData & PageView

## 2.0.10 - 2021-07-12 `[Deprecated]`
* Improving SDK stability
* Added VisitorCodeTooLong exception when exceeding the limit of 255 chars

## 2.0.9 - 2021-07-08 `[Deprecated]`
* Increased limitation for visitorCode to 255 chars

## 2.0.8 - 2021-06-25 `[Deprecated]`
* Fix ObtainFeatureVariable method. Now it returns boolean, string, number and JSON object

## 2.0.7 - 2021-06-17 `[Deprecated]`
* Improving SDK stability

## 2.0.6 - 2021-06-07 `[Deprecated]`
* Fix activateFeature issue

## 2.0.5 - 2021-05-24 `[Deprecated]`
* Added Kameleoon-Client header to tracking calls

## 2.0.4 - 2021-05-01 `[Deprecated]`
* Fix empty targeting data

## 2.0.3 - 2021-03-15 `[Deprecated]`
* Rename kameleoon factory, configurations and file names

## 2.0.2 `[Deprecated]`
* Rename kameleoon client

## 2.0.1 `[Deprecated]`
* Fix URL for data tracking

## 2.0.0 `[Deprecated]`
* Create new kameleoonClient SDK
