# Changelog
All notable changes to this project will be documented in this file.

## 4.1.2 - 2024-02-16
### Features
* Added support for additional Data API servers across the world for even faster network requests.

## 4.1.1 - 2024-02-02
### Bug Fixes
* Stability and performance improvements.

## 4.1.0 - 2024-01-17
### Features
* [`addData`](https://developers.kameleoon.com/feature-management-and-experimentation/mobile-sdks/ios-sdk#adddata) method now accepts an array of `Array<KameleoonData>`. Variadic parameters are still supported.
* Added method [`getRemoteVisitorData`](https://developers.kameleoon.com/feature-management-and-experimentation/mobile-sdks/ios-sdk/#getremotevisitordata) fetches the remote visitor's data (with an optional capability to add the data for the visitor):
* Added a new parameter `completion` to some methods to replace the deprecated `completionHandler`. The `completion` parameter now represents the `Result` value. Methods with the `completion` parameter no longer throw errors directly. Instead, the `.failure` case contains information about issues that occurred during the request. The change is related to the following methods:
    - [`getVisitorWarehouseAudience(warehouseKey:customDataIndex:completion:)`](https://developers.kameleoon.com/feature-management-and-experimentation/mobile-sdks/ios-sdk/#getvisitorwarehouseaudience) instead of `getVisitorWarehouseAudience(warehouseKey:customDataIndex:completionHandler:)`
    - [`getRemoteData(key:completion:)`](https://developers.kameleoon.com/feature-management-and-experimentation/mobile-sdks/ios-sdk/#getremotedata) instead of `getRemoteData(key:completionHandler:)`

## 4.0.0 - 2023-12-29
### Breaking changes
* The minimum supported iOS version has been increased to 12.0.
* Removed the `visitorCode` parameter from all methods that accepted it. You must now specify the visitor code during initialization. As a result, a `KameleoonClient` instance only works for a single visitor:
    - [`addData`](https://developers.kameleoon.com/feature-management-and-experimentation/mobile-sdks/ios-sdk/#adddata)
    - [`flush`](https://developers.kameleoon.com/feature-management-and-experimentation/mobile-sdks/ios-sdk/#flush)
    - [`isFeatureActive`](https://developers.kameleoon.com/feature-management-and-experimentation/mobile-sdks/ios-sdk/#isfeatureactive)
    - [`getFeatureVariationKey`](https://developers.kameleoon.com/feature-management-and-experimentation/mobile-sdks/ios-sdk/#getfeaturevariationkey)
    - [`getFeatureVariable`](https://developers.kameleoon.com/feature-management-and-experimentation/mobile-sdks/ios-sdk/#getfeaturevariable)
    - [`trackConversion`](https://developers.kameleoon.com/feature-management-and-experimentation/mobile-sdks/ios-sdk/#trackconversion)
    - [`getActiveFeatureList`](https://developers.kameleoon.com/feature-management-and-experimentation/mobile-sdks/ios-sdk/#getactivefeaturelist)
    - [`getVisitorWarehouseAudience`](https://developers.kameleoon.com/feature-management-and-experimentation/mobile-sdks/ios-sdk/#getvisitorwarehouseaudience)
* Removed all methods and errors related to **experiments**:
  * Methods:
    - `triggerExperiment`
    - `getVariationAssociatedData`
    - `getExperimentList`
  * Error types:
    - `experimentNotFound`
    - `notTargeted`
    - `notAllocated`
    - `siteCodeDisabled`
* Removed the `activateFeature` method that was deprecated in 3.x versions.
* Changed the following classes, methods, fields and exceptions:
    * Methods:
        - Renamed `getFeatureAllVariables` to [`getFeatureVariationVariables`](https://developers.kameleoon.com/feature-management-and-experimentation/mobile-sdks/ios-sdk/#getfeaturevariationvariables).
    * Fields:
        - Renamed `value` to `values` in [`CustomData.init`](https://developers.kameleoon.com/feature-management-and-experimentation/mobile-sdks/ios-sdk/#customdata).
        - Renamed `refreshIntervalMinutes` to `refreshIntervalMinute` in [`KameleoonClientConfig`](https://developers.kameleoon.com/feature-management-and-experimentation/mobile-sdks/ios-sdk/#initialize-the-kameleoon-client).
        - Renamed `refresh_interval_minutes` to `refresh_interval_minute` in the [configuration](https://developers.kameleoon.com/feature-management-and-experimentation/mobile-sdks/ios-sdk/#additional-configuration) file.
        - Renamed `sitecode` to `siteCode` in [`KameleoonClientFactory.create`](https://developers.kameleoon.com/feature-management-and-experimentation/mobile-sdks/ios-sdk/#create)
    * Exceptions:
        - Removed `KameleoonError.credentialsNotFound` (`clientId` and `clientSecret` credentials are now optional).
        - Renamed `KameleoonError.configurationInvalid` to `KameleoonError.dataFileInvalid`.
        - Renamed `KameleoonError.visitorCodeNotValid` to `KameleoonError.visitorCodeInvalid`.
        - Renamed `KameleoonError.featureFlagNotFound` to `KameleoonError.Feature.notFound`.
        - Renamed `KameleoonError.variationNotFound` to `KameleoonError.Feature.variationNotFound`.
        - Renamed `KameleoonError.variableNotFound` to `KameleoonError.Feature.variableNotFound`.
* Added new exception `KameleoonError.Feature.environmentDisabled` indicating that the feature flag is disabled for certain environments. The following methods can throw the new exception:
    - [`getFeatureVariationKey`](https://developers.kameleoon.com/feature-management-and-experimentation/mobile-sdks/ios-sdk/#getfeaturevariationkey)
    - [`getFeatureVariable`](https://developers.kameleoon.com/feature-management-and-experimentation/mobile-sdks/ios-sdk/#getfeaturevariable)
    - [`getFeatureVariationVariables`](https://developers.kameleoon.com/feature-management-and-experimentation/mobile-sdks/ios-sdk/#getfeaturevariationvariables)
* Added new exception `KameleoonError.siteCodeIsEmpty` for method [`KameleoonClientFactory.create`](https://developers.kameleoon.com/feature-management-and-experimentation/mobile-sdks/ios-sdk/#create) indicating that the provided sitecode is empty.
* Changed the data type of the `revenue` value from `Float` to `Double` in two methods:
    - [`Conversion`](https://developers.kameleoon.com/feature-management-and-experimentation/mobile-sdks/ios-sdk/#conversion) init method
    - [`trackConversion`](https://developers.kameleoon.com/feature-management-and-experimentation/mobile-sdks/ios-sdk/#trackconversion) method

### Features
* Added [`setLegalConsent`](https://developers.kameleoon.com/feature-management-and-experimentation/mobile-sdks/ios-sdk/#setlegalconsent) method to determine the types data Kameleoon includes in tracking requests. This helps you adhere to legal and regulatory requirements while responsibly managing visitor data. You can find more information in the [Consent management policy](https://help.kameleoon.com/consent-management-policy/).
* [`KameleoonClientFactory.create`](https://developers.kameleoon.com/feature-management-and-experimentation/mobile-sdks/ios-sdk/#create) method accepts `visitorCode` as a parameter to use for all SDK methods. If you omit the `visitorCode`, the SDK generates a new visitor code value that it uses until you overwrite it. To overwrite a `visitorCode`, provide it as a parameter explicitly to the method. The method throws `KameleoonError.visitorCodeInvalid` if the provided `visitorCode` is invalid (empty or longer than 255 characters).
* Added new configuration fields to [`KameleoonClientConfig`](https://developers.kameleoon.com/feature-management-and-experimentation/mobile-sdks/ios-sdk/#initialize-the-kameleoon-client) and external [configuration](https://developers.kameleoon.com/csharp-sdk.html#additional-configuration) file:
    - `dataExpirationIntervalMinute` (`data_expiration_interval_minute`) specifies the time (in minutes) that the SDK retains the visitor's data on the device. By default, the TTL (time to live) is `Date.distantFuture`.
    - `defaultTimeoutMillisecond` (`default_timeout_millisecond`) designates the predefined timeout for network requests.
* Changed the `key` parameter in the [`getRemoteData`](https://developers.kameleoon.com/feature-management-and-experimentation/mobile-sdks/ios-sdk/#getremotedata) method from required to optional. If you don't provide a `key` parameter, the SDK uses the `visitorCode` specified during initialization.
## 3.1.0 - 2023-10-19
### Features
* Added [`getVisitorWarehouseAudience`](https://developers.kameleoon.com/ios-sdk.html#getvisitorwarehouseaudience) method to retrieve all data associated with a visitor's warehouse audiences and adds it to the visitor.


## 3.0.6 - 2023-08-29
### Features
* Changed the `KameleoonClientConfig` parameters `clientId` and `clientSecret` and the external configuration file parameters, `client_id` and `client_secret` from required to optional. This means you can now successfully initialize a configuration without providing credentials. Previously, you would receive a `credentialsNotFound` exception.

## 3.0.5 - 2023-07-17
* Added new conditions for targeting:
    - Visitor Code
    - SDK Language
    - [Device](https://developers.kameleoon.com/feature-management-and-experimentation/mobile-sdks/ios-sdk/#device)
    - [Conversion](https://developers.kameleoon.com/feature-management-and-experimentation/mobile-sdks/ios-sdk/#trackconversion)

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
