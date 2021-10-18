---
layout: default-layout
title: Dynamsoft Barcode Reader Objective-C & Swift API Reference - iLocalizationResult Class
description: This page shows the iLocalizationResult Class of Dynamsoft Barcode Reader for iOS SDK.
keywords: iLocalizationResult, class, api reference, objective-c, oc, swift
needAutoGenerateSidebar: true
noTitleIndex: true
---


# Class iLocalizationResult

The `iLocalizationResult` extends the class [`iTextResult`](auxiliary-iTextResult.md) and [`iIntermediateResult`](auxiliary-iIntermediateResult.md). It stores the barcode localization data.

```objc
@interface iLocalizationResult
```  

| Attribute | Type | Description |
|---------- | ---- | ----------- |
| [`terminatePhase`](#terminatephase) | [`EnumTerminatePhase`]({{ site.enumerations }}parameter-mode-enums.html#terminatephase) | The terminate phase of localization result. |
| [`barcodeFormat`](#barcodeformat) | [`EnumBarcodeFormat`]({{ site.enumerations }}format-enums.html#barcodeformat) | Barcode type in BarcodeFormat group 1. |
| [`barcodeFormatString`](#barcodeformatstring) | *NSString \** | Barcode type in BarcodeFormat group 1 as string. |
| [`barcodeFormat_2`](#barcodeformat_2 ) | [`EnumBarcodeFormat2`]({{ site.enumerations }}format-enums.html#barcodeformat_2) | Barcode type in BarcodeFormat group 2. |
| [`barcodeFormatString_2`](#barcodeformatstring_2) | *NSString \** | Barcode type in BarcodeFormat group 2 as string. |
| [`resultPoints`](#resultpoints) | *NSArray \** | The vertices coordinates information of the barcode region. |
| [`angle`](#angle) | *NSInteger* | The angle of a barcode. Values range is from 0 to 360. |
| [`moduleSize`](#modulesize) | *NSInteger* | The barcode module size (the minimum bar width in pixel). |
| [`pageNumber`](#pagenumber) | *NSInteger* | The page number the barcode located in. The index is 0-based. |
| [`regionName`](#regionname) | *NSString \** | The region name the barcode located in. |
| [`documentName`](#documentname)| *NSString \** | The document name. |
| [`resultCoordinateType`](#resultcoordinatetype) | [`EnumResultCoordinateType`]({{ site.enumerations }}result-enums.html#resultcoordinatetype) | The coordinate type. |
| [`accompanyingTextBytes`](#accompanyingtextbytes) | *NSData \** | The accompanying text content in a byte array. |
| [`accompanyingTextBytesLength`](#accompanyingtextbyteslength) | *NSInteger* | The length of the accompanying text byte array. |
| [`confidence`](#confidence) | *NSInteger* | The confidence of the localization result. |

## terminatePhase

The terminate phase of localization result.

```objc
EnumTerminatePhase terminatePhase
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

## resultPoints

The resultPoints are Four CGPoints that localize the result area.

```objc
NSArray* resultPoints
```

## angle

The angle of a barcode. Values range is from 0 to 360.

```objc
NSInteger angle
```

## moduleSize

The barcode module size (the minimum bar width in pixel).

```objc
NSInteger moduleSize
```

## pageNumber

The page number the barcode located in. The index is 0-based.

```objc
NSInteger pageNumber
```

## regionName

The region name the barcode located in.

```objc
NSString* regionName
```

## documentName

The document name.

```objc
NSString* documentName
```

## resultCoordinateType

The coordinate type.

```objc
EnumResultCoordinateType resultCoordinateType
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

## confidence

The confidence of the localization result.

```objc
NSInteger confidence
```
