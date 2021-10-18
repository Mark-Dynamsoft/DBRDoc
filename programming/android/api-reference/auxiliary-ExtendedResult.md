---
layout: default-layout
title: Dynamsoft Barcode Reader Android API Reference - ExtendedResult Class
description: This page shows the ExtendedResult Class of Dynamsoft Barcode Reader for Android SDK.
keywords: ExtendedResult, class, api reference, android
needAutoGenerateSidebar: true
needGenerateH3Content: true
noTitleIndex: true
---


# ExtendedResult

`ExtendedResult` is the extension of the class [`TextResult`](auxiliary-TextResult.md). It stores the extended result information.

```java
class com.dynamsoft.dbr.ExtendedResult
```

| Attribute | Type | Descriptions |
|---------- | ---- | ----------- |
| [`resultType`](#resulttype) | *int* | Extended result type. |
| [`barcodeFormat`](#barcodeformat) | *int* | Barcode type in BarcodeFormat group 1. |
| [`barcodeFormatString`](#barcodeformatstring) | *String* | Barcode type in BarcodeFormat group 1 as string. |
| [`barcodeFormat_2`](#barcodeformat_2) | *int* | Barcode type in BarcodeFormat group 2. |
| [`barcodeFormatString_2`](#barcodeformatstring_2) | *String* | Barcode type in BarcodeFormat group 2 as string. |
| [`confidence`](#confidence) | *int* | The confidence of the result. The higher confidence means the higher accuracy. |
| [`bytes`](#bytes) | *byte\[\]* | The content in a byte array. |
| [`accompanyingTextBytes`](#accompanyingtextbytes) | *byte\[\]* | The accompanying text content in a byte array. |
| [`deformation`](#deformation) | *int* | The deformation value. |
| [`detailedResult`](#detailedresult) | *Object* | One of the following: [`QRCodeDetails`](auxiliary-QRCodeDetails.md), [`PDF417Details`](auxiliary-PDF417Details.md), [`DataMatrixDetails`](auxiliary-DataMatrixDetails.md), [`AztecDetails`](auxiliary-AztecDetails.md), [`OneDCodeDetails`](auxiliary-OneDCodeDetails.md). |
| [`samplingImage`](#samplingimage) | [`SamplingImageData`](auxiliary-SamplingImageData.md) | The sampling image info. |
| [`clarity`](#clarity) | *int* | The clarity of the barcode zone in percentage. |

## resultType

Extended result type.

```java
int resultType
```

## barcodeFormat

Barcode type in BarcodeFormat group 1.

```java
int barcodeFormat
```

**Value Range**

One of the [`EnumBarcodeFormat`]({{ site.enumerations }}format-enums.html#barcodeformat) Enumeration value.

**See Also**

[`EnumBarcodeFormat`]({{ site.enumerations }}format-enums.html#barcodeformat), [`EnumBarcodeFormat_2`]({{ site.enumerations }}format-enums.html#barcodeformat_2)

## barcodeFormatString

Barcode type in BarcodeFormat group 1 as string.

```java
String barcodeFormatString
```

**Value Range**

One of the barcode type in [`EnumBarcodeFormat`]({{ site.enumerations }}format-enums.html#barcodeformat).

**See Also**

[`EnumBarcodeFormat`]({{ site.enumerations }}format-enums.html#barcodeformat), [`EnumBarcodeFormat_2`]({{ site.enumerations }}format-enums.html#barcodeformat_2)

## barcodeFormat_2

Barcode type in BarcodeFormat group 2.

```java
int barcodeFormat_2
```

**Value Range**

One of the [`EnumBarcodeFormat_2`]({{ site.enumerations }}format-enums.html#barcodeformat_2) Enumeration items

**See Also**

[`EnumBarcodeFormat`]({{ site.enumerations }}format-enums.html#barcodeformat), [`EnumBarcodeFormat_2`]({{ site.enumerations }}format-enums.html#barcodeformat_2)

## barcodeFormatString_2

Barcode type in BarcodeFormat group 2 as string.

```java
String barcodeFormatString_2
```

**Value Range**

One of the barcode type in [`EnumBarcodeFormat_2`]({{ site.enumerations }}format-enums.html#barcodeformat_2).

**See Also**

[`EnumBarcodeFormat`]({{ site.enumerations }}format-enums.html#barcodeformat), [`EnumBarcodeFormat_2`]({{ site.enumerations }}format-enums.html#barcodeformat_2)

## confidence

The confidence of the result. The higher confidence means the higher accuracy. You can make the confidence filter throw the [`PublicRuntimeSettings.minResultConfidence`](auxiliary-PublicRuntimeSettings.md#minresultconfidence). The recommended minimum confidence value is 30.

```java
int confidence
```

## bytes

The content in a byte array.

```java
byte[] bytes
```

## accompanyingTextBytes

The accompanying text content in a byte array.

```java
byte[] accompanyingTextBytes
```

## deformation

The deformation value.

```java
int deformation
```

## detailedResult

One of the following: [`QRCodeDetails`](auxiliary-QRCodeDetails.md), [`PDF417Details`](auxiliary-PDF417Details.md), [`DataMatrixDetails`](auxiliary-DataMatrixDetails.md), [`AztecDetails`](auxiliary-AztecDetails.md), [`OneDCodeDetails`](auxiliary-OneDCodeDetails.md).

```java
Object detailedResult
```

## samplingImage

The sampling image info.

```java
SamplingImageData samplingImage
```

## clarity

The clarity of the barcode zone in percentage.

```java
int clarity
```
