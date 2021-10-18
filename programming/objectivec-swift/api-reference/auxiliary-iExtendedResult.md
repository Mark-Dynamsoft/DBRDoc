---
layout: default-layout
title: Dynamsoft Barcode Reader Objective-C & Swift API Reference - iExtendedResult Class
description: This page shows the iExtendedResult Class of Dynamsoft Barcode Reader for iOS SDK.
keywords: iExtendedResult, class, api reference, objective-c, oc, swift
needAutoGenerateSidebar: true
noTitleIndex: true
---

# Class iExtendedResult

`iExtendedResult` is the extension of the class [`iTextResult`](auxiliary-iTextResult.md). It stores the extended result information.

```objc
@interface iExtendedResult
```  

| Attribute | Type | Descriptions |
|---------- |------|-------------|
| [`resultType`](#resulttype) | [`EnumResultType`]({{ site.enumerations }}result-enums.html#resulttype) | The extended result type. |
| [`barcodeFormat`](#barcodeformat) | [`EnumBarcodeFormat`]({{ site.enumerations }}format-enums.html#barcodeformat) | Barcode type in BarcodeFormat group 1. |
| [`barcodeFormatString`](#barcodeformatstring) | *NSString \** | Barcode type in BarcodeFormat group 1 as string. |
| [`barcodeFormat_2`](#barcodeformat_2) | [`EnumBarcodeFormat2`]({{ site.enumerations }}format-enums.html#barcodeformat_2) | Barcode type in BarcodeFormat group 2. |
| [`barcodeFormatString_2`](#barcodeformatstring_2) | *NSString \** | Barcode type in BarcodeFormat group 2 as string. |
| [`confidence`](#confidence) | *NSInteger* | The confidence of the result. The higher confidence means the higher accuracy. |
| [`bytes`](#bytes) | *NSData \** | The content in a byte array. |
| [`bytesLength`](#byteslength) | *NSInteger* | The length of the byte array. |
| [`accompanyingTextBytes`](#accompanyingtextbytes) | *NSData \** | The accompanying text content in a byte array. |
| [`accompanyingTextBytesLength`](#accompanyingtextbyteslength) | *NSInteger* | The length of the accompanying text byte array. |
| [`deformation`](#deformation) | *NSInteger* | The deformation value. |
| [`detailedResult`](#detailedresult) | *NSObject \** | One of the following: [`QRCodeDetails`](#qrcodedetails), [`PDF417Details`](#pdf417details), [`DataMatrixDetails`](#datamatrixdetails), [`AztecDetails`](#aztecdetails), [`OneDCodeDetails`](#onedcodedetails). |
| [`samplingImage`](#samplingimage) | [`iSamplingImageData*`](auxiliary-iSamplingImageData.md) | The sampling image info. |
| [`clarity`](#clarity) | *NSInteger* | The clarity of the barcode zone in percentage. |

## resultType

Extended result type.

```objc
EnumResultType resultType
```

## barcodeFormat

Barcode type in BarcodeFormat group 1.

```objc
EnumBarcodeFormat barcodeFormat
```

## barcodeFormatString

Barcode type in BarcodeFormat group 1 as string.

```objc
NSString* barcodeFormatString
```

## barcodeFormat_2

Barcode type in BarcodeFormat group 2.

```objc
EnumBarcodeFormat2 barcodeFormat_2
```

## barcodeFormatString_2

Barcode type in BarcodeFormat group 2 as string.

```objc
NSString* barcodeFormatString_2
```

## confidence

The confidence of the result.

```objc
NSInteger confidence
```

## bytes

The content in a byte array.

```objc
NSData* bytes
```

## bytesLength

The length of the byte array.

```objc
NSInteger bytesLength
```

## accompanyingTextBytes

The accompanying text content in a byte array.

```objc
NSData* accompanyingTextBytes
```

## accompanyingTextBytesLength

The length of the accompanying text byte array.

```objc
NSInteger accompanyingTextBytesLength
```

## deformation

The deformation value.

```objc
NSInteger deformation
```

## detailedResult

One of the following: [`iQRCodeDetails`](iQRCodeDetails.md), [`iPDF417Details`](iPDF417Details.md), [`iDataMatrixDetails`](iDataMatrixDetails.md), [`iAztecDetails`](iAztecDetails.md), [`iOneDCodeDetails`](iOneDCodeDetails.md).

```objc
NSObject* detailedResult
```

## samplingImage

The sampling image info.

```objc
iSamplingImageData* samplingImage
```

## clarity

The clarity of the barcode zone in percentage.

```objc
NSInteger clarity
```
