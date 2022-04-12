# Changelog
All notable changes to this project will be documented in this file.

## 2.0.15 - 2022-04-12
* Added method for retrieving data from remote source: [`retrieveDataFromRemoteSource`](https://developers.kameleoon.com/swift-sdk.html#retrievedatafromremotesource)
* Remove `Data` alias to `KameleoonData`. Related to [`addData`](https://developers.kameleoon.com/swift-sdk.html#adddata)

## 2.0.14 - 2022-02-10
* Added support of multi-environment for feature flags, Related to [`activateFeature`](https://developers.kameleoon.com/swift-sdk.html#activatefeature), [`obtainFeatureVariable`](https://developers.kameleoon.com/swift-sdk.html#obtainfeaturevariable)
* Added checking for status of site (Enable / Disable). Related to [`activateFeature`](https://developers.kameleoon.com/swift-sdk.html#activatefeature), [`triggerExperiment`](https://developers.kameleoon.com/swift-sdk.html#triggerexperiment)

## 2.0.13 - 2021-12-10
* Fixed issue with overlapping periods for scheduling. Related to [`activateFeature`](https://developers.kameleoon.com/swift-sdk.html#activatefeature)
* Fixed issue with multiple adding CustomData with different values. Related to [`addData`](https://developers.kameleoon.com/swift-sdk.html#adddata)

## 2.0.12 - 2021-10-26
* Added scheduling functionality for [`activateFeature`](https://developers.kameleoon.com/swift-sdk.html#activatefeature)
* Fixed a issue with segment conditions, when only the first condition was taken into account and others are ignored. Also fixed issue when `is higher than` and `is lower than` had wrong result. Related to [`activateFeature`](https://developers.kameleoon.com/swift-sdk.html#activatefeature) and [`triggerExperiment`](https://developers.kameleoon.com/swift-sdk.html#triggerexperiment)

## 2.0.11 - 2021-08-31
* Fixed error with variation id for triggerExperiment for returning visitors 
* Fixed when obtainFeatureVariable & obtainVariationAssociatedData throws wrong exception types
* Adding URI encoding for CustomData & PageView

## 2.0.10 - 2021-07-12
* Improving SDK stability
* Added VisitorCodeTooLong exception when exceeding the limit of 255 chars

## 2.0.9 - 2021-07-08
* Increased limitation for visitorCode to 255 chars

## 2.0.8 - 2021-06-25
* Fix ObtainFeatureVariable method. Now it returns boolean, string, number and JSON object

## 2.0.7 - 2021-06-17
* Improving SDK stability 

## 2.0.6 - 2021-06-07
* Fix activateFeature issue

## 2.0.5 - 2021-05-24
* Added Kameleoon-Client header to tracking calls

## 2.0.4 - 2021-05-01
* Fix empty targeting data

## 2.0.3 - 2021-03-15
* Rename kameleoon factory, configurations and file names

## 2.0.2
* Rename kameleoon client

## 2.0.1
* Fix URL for data tracking

## 2.0.0
* Create new kameleoonClient SDK
