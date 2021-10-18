---
layout: default-layout
title: Dynamsoft Barcode Reader for Android - Best Speed Settings Samples
description: This is the Best Speed Settings Samples page of Dynamsoft Barcode Reader for Android SDK.
keywords: android, samples, speed
needAutoGenerateSidebar: false
breadcrumbText: Best Speed
---

# Speed-first Settings

On this page, you can find useful guidelines on improving the decoding speed of the barcode reader.

The speed related parameters:

| Parameter Name | Description |
| -------------- | ----------- |
| [`ExpectedBarcodeCount`](#expectedbarcodecount) | The expected barcode count in the scan region. |
| [`BarcodeFormat`](#barcodeformat) | The barcode types in barcode format enumerations. |
| [`region`](#region) | The scan region. |
| [`BinarizationModes`](#binarizationmodes) | Configurations of the binarization mode parameters. |
| [`LocalizationModes`](#localizationmodes) | Configurations of the localization mode parameters. |

## ExpectedBarcodeCount

Normally, the barcode reader will try different parameter combinations to find as many barcodes as the expected number. If the expected barcode count is far more than the actual value, the barcode decoding speed will be decreased. As a result, to maximum the barcode decoding speed, please make sure to set the expected barcode count to an appropriate value.

**Default Value**

0: The barcode count is unknown. The barcode reader will try to find at least one barcode.

**Parameter Setting**

| Usage Scenario | Barcode count setting | Explanation |
| -------------- | --------------------- | ----------- |
| Single barcode usage scenarios | 1 | The barcode reader will focus on decoding a single barcode and reach the highest speed. |
| Fixed count multiple barcode decoding | n | N equals the number of barcodes in your usage scenario. |
| Unkown usage scenarios | 0 | The barcode reader will return at least one result. |

## BarcodeFormat

The barcode reader will try all the preset barcode formats until it finds as many barcodes as the expected value. Supporting more barcode formats will definitely improve the read rate of your app on unknown usage scenarios. However, the reading speed will be sharply declined as well. If the supporting scope of your app is confirmed, please make sure to set the barcode format parameter exactly the same as your scope. This can save your computing resource to the greatest extent and help your app on improving its decoding speed.

## region

A smaller scan region alway means less time consuming. Without the scan region settings, the barcode reader will scan the whole image to get the barcode result. Configuring a specific scan area for your app can not only guide the users to manually approcah the barcode area, but also greatly reduce the size of the scan region, which sharply reduce the barcode reading time.

## LocalizationModes

The Barcode Reader has several different barcode localiaztion methods. Users can set the localization modes via the parameter `LocalizationModes`. The selection of localization mode can effectively improve the decoding speed.

## Templates

### For single barcode scanning

### For single barcode continuous scanning

### For general usage
