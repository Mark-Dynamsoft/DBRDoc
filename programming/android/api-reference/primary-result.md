---
layout: default-layout
title: Dynamsoft Barcode Reader Android API Reference - BarcodeReader Result Methods
description: This page shows BarcodeReader result methods of Dynamsoft Barcode Reader for Android SDK.
keywords: getIntermediateResults, result methods, BarcodeReader, api reference, android
needAutoGenerateSidebar: true
noTitleIndex: true
---

# Result Methods

  | Method               | Description |
  | -------------------- | ----------- |
  | [`getIntermediateResults`](#getintermediateresults) | Get intermediate results. |
  | [`enableResultVerification`](#enableresultverification) | Result will be verified before output. |
  | [`enableDuplicateFilter`](#enableduplicatefilter) | Duplicate results will be filtered and output only once for every 3 seconds |

  ---

## getIntermediateResults

Get intermediate results containing the original image, the color clustered image, the binarized Image, contours, Lines, TextBlocks, etc.

```java
IntermediateResult[] getIntermediateResults() throws BarcodeReaderException 
```

**Return Value**

The intermediate results were returned by the SDK.

**Exceptions**

[`BarcodeReaderException`](auxiliary-BarcodeReaderException.md)

**Code Snippet**

```java
BarcodeReader reader = new BarcodeReader();
PublicRuntimeSettings settings = reader.getRuntimeSettings();
settings.intermediateResultTypes = EnumIntermediateResultType.IRT_ORIGINAL_IMAGE | EnumIntermediateResultType.IRT_COLOUR_CLUSTERED_IMAGE | EnumIntermediateResultType.IRT_COLOUR_CONVERTED_GRAYSCALE_IMAGE;
reader.updateRuntimeSettings(settings);
TextResult[] result = reader.decodeFile("your file path", "");
IntermediateResult[] irtResult = reader.getIntermediateResults();
reader.destroy();
```

## enableResultVerification

The text results will be verified before output if the result verification is enabled.

```java
void enableResultVerification(boolean) throws BarcodeReaderException 
```

**Exceptions**

[`BarcodeReaderException`](auxiliary-BarcodeReaderException.md)

**Code Snippet**

```java
reader.enableResultVerification(true)
// To check the status of this mode:
boolean x = reader.getEnableResultVerificationStatus();
```

## enableDuplicateFilter

The duplicated text result will be filtered. The barcode reader will not output the result for the same barcode a second time in 3 seconds.

```java
void enableDuplicateFilter(boolean) throws BarcodeReaderException
```

**Exceptions**

[`BarcodeReaderException`](auxiliary-BarcodeReaderException.md)

**Code Snippet**

```java
reader.enableDuplicateFilter(true)
// To check the status of this mode:
boolean x = reader.getEnableDuplicateFilterStatus();
```
