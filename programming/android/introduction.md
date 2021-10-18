---
layout: default-layout
title: Dynamsoft Barcode Reader for Android - Introduction Page
description: This is the Introduction page of Dynamsoft Barcode Reader for Android SDK.
keywords: Android, Introduction
needAutoGenerateSidebar: true
needGenerateH3Content: true
breadcrumbText: Android introduction
---

# Dynamsoft Barcode Reader - Android SDK

Dynamsoft Barcode Reader Android SDK enables users to develop Android barcode reading apps simply and efficiently.

## High-Speed Barcode Decoding

Dynamsoft Barcode Reader algorithm can deal with 1400+ barcodes in one minute and get 500+ unique barcode results. To reach the maximum efficiency of Dynamsoft Barcode Reader, you must make the beat parameter configuration for your usage scenarios. Regardless of the image quality, the following three parameters are the main factors that influence the decoding speed of your app.

### The expected barcode formats

### The pixel size (or percentage) of the scan area

### The barcode count in the scan area

The barcode reader will try to find as many barcodes as the given value. As a result, the less expected barcode count is, the higher barcode decoding speed will be.

- If the usage scenarios of your app are unknown, please set this value 0. The barcode reader will try to find at least one barcode.
- If the usage scenarios of your app are confirmed, please set this value exactly the number you want to scan

To maximum your app's performance, please firstly define the ranges of these parameters in your usage scenarios. You can update parameters throw [`PublicRuntimeSetting`](api-reference/auxiliary-PublicRuntimeSettings.md) class so that your app can reach the expected performance.

## High-Accuracy Strategies

The default algorithm of Dynamsoft Barcode Reader is accurate enough in general usage scenarios. Besides, if you want to further improve the accuracy of your barcode decoding app, the following solutions are the simplest ways for you to reduce the misreading rate.

### Filter the result by `confidence`

The `confidence` is an attribute of the extended barcode result. The results with higher confidence are more possible to be correct. Normally, for each successfully decoded frame, the Barcode Reader will automatically output the highest confidence result. If you make a setting on the confidence value, the lower confidence result will be filtered out to make sure the accuracy. The suggested confidence value is 30. Currently, the confidence of correct results are always above 30 while the confidence of misreading results are always less then 30.

### Enable the result verification mode

Dynamsoft Barcode Reader verification mode will verify the results between multiple frames. The system will temporarily store the barcode results for the first time they are returned. When the barcode reader got a new result value that already exists in the results repository, the system will determine the result to be correct and output the result.

## Multiple Usage Scenarios Support

Besides the general barcode decoding configurations, the quality of the input image is another considerable factor that influences the efficiency and accuracy of barcode reading. To make sure that the barcode reader can cover more usage environments. Dynamsoft Barcode Reader includes a series of [image processing algorithms]({{site.parameters_reference}}image-parameter/index.html).
