---
layout: default-layout
title: Dynamsoft Barcode Reader Objective-C & Swift API Reference - iPDF417Details Class
description: This page shows the iPDF417Details Class of Dynamsoft Barcode Reader for iOS SDK.
keywords: iPDF417Details, class, api reference, objective-c, oc, swift
needAutoGenerateSidebar: true
noTitleIndex: true
---


# Class iPDF417Details

`iPDF417Details` is one of the [`detailedResult`](auxiliary-iTextResult.md#detailedresult) in class `iTextResult`. It stores the PDF417 code details.

```objc
@interface iPDF417Details
```  

| Attribute | Type | Descriptions |
|---------- |------|------------ |
| [`moduleSize`](#modulesize) | *NSInteger* | The barcode module size (the minimum bar width in pixel). |
| [`rows`](#rows) | *NSInteger* | The row count of the barcode. |
| [`columns`](#columns) | *NSInteger* | The column count of the barcode. |
| [`errorCorrectionLevel`](#errorcorrectionlevel) | *NSInteger* | The error correction level of the barcode. |

## moduleSize

The barcode module size (the minimum bar width in pixel).

```objc
NSInteger moduleSize
```

## rows

The row count of the barcode.

```objc
NSInteger rows
```

## columns

The column count of the barcode.

```objc
NSInteger columns
```

## errorCorrectionLevel

The error correction level of the barcode.

```objc
NSInteger errorCorrectionLevel
```
