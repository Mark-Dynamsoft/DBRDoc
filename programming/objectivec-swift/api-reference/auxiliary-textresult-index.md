---
layout: default-layout
title: Dynamsoft Barcode Reader iOS API Reference - TextResult index
description: This page shows the TextResult index of Dynamsoft Barcode Reader for iOS SDK.
keywords: TextResult index, api reference, iOS
needAutoGenerateSidebar: true
noTitleIndex: true
---

# Barcode Result Classes

## [iTextResult](auxiliary-iTextResult.md)

`iTextResult` is the class that stores the text result data.

```objc
@interface iTextResult
```  

| Attribute | Type | Descriptions |
|-----------|------| ----------- |
| [`barcodeFormat`](auxiliary-iTextResult.md#barcodeformat) | [`EnumBarcodeFormat`]({{ site.enumerations }}format-enums.html#barcodeformat) | Barcode type in BarcodeFormat group 1. |
| [`barcodeFormatString`](auxiliary-iTextResult.md#barcodeformatstring) | *NSString \** | Barcode type in BarcodeFormat group 1 as string. |
| [`barcodeFormat_2`](auxiliary-iTextResult.md#barcodeformat_2) | [`EnumBarcodeFormat2`]({{ site.enumerations }}format-enums.html#barcodeformat_2) | Barcode type in BarcodeFormat group 2. |
| [`barcodeFormatString_2`](auxiliary-iTextResult.md#barcodeformatstring_2) | *NSString \** | Barcode type in BarcodeFormat group 2 as string. |
| [`barcodeText`](auxiliary-iTextResult.md#barcodetext) | *NSString \** | The barcode text, ends by '\0'. |
| [`barcodeBytes`](auxiliary-iTextResult.md#barcodebytes) | *NSData \** | The barcode content in a byte array. |
| [`localizationResult`](auxiliary-iTextResult.md#localizationresult) | [`iLocalizationResult`](auxiliary-iLocalizationResult.md) | The corresponding localization result. |
| [`detailedResult`](auxiliary-iTextResult.md#detailedresult) | *NSObject \** | One of the following: [`iQRCodeDetails`](auxiliary-iQRCodeDetails.md), [`iPDF417Details`](auxiliary-iPDF417Details.md), [`iDataMatrixDetails`](auxiliary-iDataMatrixDetails.md), [`iAztecDetails`](auxiliary-iAztecDetails.md), [`iOneDCodeDetails`](auxiliary-iOneDCodeDetails.md). |
| [`extendedResults`](auxiliary-iTextResult.md#extendedresults) | [`NSArray<iExtendedResult>`](auxiliary-iExtendedResult.md) | The extended result array. |
| [`exception`](auxiliary-iTextResult.md#exception) | *NSString \** | The exception message. |
| [`isDPM`](auxiliary-iTextResult.md#isdpm) | *NSInteger* | This attribute stands for whether the result is a DPM result. |
| [`isMirrored`](auxiliary-iTextResult.md#ismirrored) | *NSInteger* | This attribute stands for whether the barcode is mirrored. |

## [iLocalizationResult](auxiliary-iLocalizationResult.md)

`iLocalizationResult` is the extension of the class [`iTextResult`](auxiliary-TextResult.md). It stores the localization result information.

```objc
@interface iLocalizationResult
```  

| Attribute | Type | Descriptions |
|---------- | ---- | ----------- |
| [`terminatePhase`](auxiliary-iLocalizationResult.md#terminatephase) | [`EnumTerminatePhase`]({{ site.enumerations }}parameter-mode-enums.html#terminatephase) | The terminate phase of localization result. |
| [`barcodeFormat`](auxiliary-iLocalizationResult.md#barcodeformat) | [`EnumBarcodeFormat`]({{ site.enumerations }}format-enums.html#barcodeformat) | Barcode type in BarcodeFormat group 1. |
| [`barcodeFormatString`](auxiliary-iLocalizationResult.md#barcodeformatstring) | *NSString \** | Barcode type in BarcodeFormat group 1 as string. |
| [`barcodeFormat_2`](auxiliary-iLocalizationResult.md#barcodeformat_2 ) | [`EnumBarcodeFormat2`]({{ site.enumerations }}format-enums.html#barcodeformat_2) | Barcode type in BarcodeFormat group 2. |
| [`barcodeFormatString_2`](auxiliary-iLocalizationResult.md#barcodeformatstring_2) | *NSString \** | Barcode type in BarcodeFormat group 2 as string. |
| [`resultPoints`](auxiliary-iLocalizationResult.md#resultpoints) | *NSArray \** | The vertices coordinates information of the barcode region. |
| [`angle`](auxiliary-iLocalizationResult.md#angle) | *NSInteger* | The angle of a barcode. Values range is from 0 to 360. |
| [`moduleSize`](auxiliary-iLocalizationResult.md#modulesize) | *NSInteger* | The barcode module size (the minimum bar width in pixel). |
| [`pageNumber`](auxiliary-iLocalizationResult.md#pagenumber) | *NSInteger* | The page number the barcode located in. The index is 0-based. |
| [`regionName`](auxiliary-iLocalizationResult.md#regionname) | *NSString \** | The region name the barcode located in. |
| [`documentName`](auxiliary-iLocalizationResult.md#documentname)| *NSString \** | The document name. |
| [`resultCoordinateType`](auxiliary-iLocalizationResult.md#resultcoordinatetype) | [`EnumResultCoordinateType`]({{ site.enumerations }}result-enums.html#resultcoordinatetype) | The coordinate type. |
| [`accompanyingTextBytes`](auxiliary-iLocalizationResult.md#accompanyingtextbytes) | *NSData \** | The accompanying text content in a byte array. |
| [`accompanyingTextBytesLength`](auxiliary-iLocalizationResult.md#accompanyingtextbyteslength) | *NSInteger* | The length of the accompanying text byte array. |
| [`confidence`](auxiliary-iLocalizationResult.md#confidence) | *NSInteger* | The confidence of the localization result. |

## [iExtendedResult](auxiliary-iExtendedResult.md)

`iExtendedResult` is the extension of the class [`iTextResult`](auxiliary-TextResult.md). It stores the extended result information.

```objc
@interface iExtendedResult
```  

| Attribute | Type | Descriptions |
|---------- |------|-------------|
| [`resultType`](auxiliary-iExtendedResult.md#resulttype) | [`EnumResultType`]({{ site.enumerations }}result-enums.html#resulttype) | The extended result type. |
| [`barcodeFormat`](auxiliary-iExtendedResult.md#barcodeformat) | [`EnumBarcodeFormat`]({{ site.enumerations }}format-enums.html#barcodeformat) | Barcode type in BarcodeFormat group 1. |
| [`barcodeFormatString`](auxiliary-iExtendedResult.md#barcodeformatstring) | *NSString \** | Barcode type in BarcodeFormat group 1 as string. |
| [`barcodeFormat_2`](auxiliary-iExtendedResult.md#barcodeformat_2) | [`EnumBarcodeFormat2`]({{ site.enumerations }}format-enums.html#barcodeformat_2) | Barcode type in BarcodeFormat group 2. |
| [`barcodeFormatString_2`](auxiliary-iExtendedResult.md#barcodeformatstring_2) | *NSString \** | Barcode type in BarcodeFormat group 2 as string. |
| [`confidence`](auxiliary-iExtendedResult.md#confidence) | *NSInteger* | The confidence of the result. The higher confidence means the higher accuracy. |
| [`bytes`](auxiliary-iExtendedResult.md#bytes) | *NSData \** | The content in a byte array. |
| [`bytesLength`](auxiliary-iExtendedResult.md#byteslength) | *NSInteger* | The length of the byte array. |
| [`accompanyingTextBytes`](auxiliary-iExtendedResult.md#accompanyingtextbytes) | *NSData \** | The accompanying text content in a byte array. |
| [`accompanyingTextBytesLength`](auxiliary-iExtendedResult.md#accompanyingtextbyteslength) | *NSInteger* | The length of the accompanying text byte array. |
| [`deformation`](auxiliary-iExtendedResult.md#deformation) | *NSInteger* | The deformation value. |
| [`detailedResult`](auxiliary-iExtendedResult.md#detailedresult) | *NSObject \** | One of the following: [`QRCodeDetails`](#qrcodedetails), [`PDF417Details`](#pdf417details), [`DataMatrixDetails`](#datamatrixdetails), [`AztecDetails`](#aztecdetails), [`OneDCodeDetails`](#onedcodedetails). |
| [`samplingImage`](auxiliary-iExtendedResult.md#samplingimage) | [`iSamplingImageData*`](auxiliary-iSamplingImageData.md) | The sampling image info. |
| [`clarity`](auxiliary-iExtendedResult.md#clarity) | *NSInteger* | The clarity of the barcode zone in percentage. |

## [iAztecDetails](auxiliary-iAztecDetails.md)

`iAztecDetails` is one of the [`detailedResult`](auxiliary-TextResult.md#detailedresult) in class `iTextResult`. It stores the Aztec code details.

```objc
@interface iAztecDetails
```

| Attribute | Type | Descriptions |
|---------- | -----|------ |
| [`moduleSize`](auxiliary-iAztecDetails.md#modulesize) | *NSInteger* | The barcode module size (the minimum bar width in pixel). |
| [`rows`](auxiliary-iAztecDetails.md#rows) | *NSInteger* | The row count of the barcode. |
| [`columns`](auxiliary-iAztecDetails.md#columns) | *NSInteger* | The column count of the barcode. |
| [`layerNumber`](auxiliary-iAztecDetails.md#layernumber) | *NSInteger* | A negative number (-1, -2, -3, -4) specifies a compact Aztec code. A positive number (1, 2, .. 32) specifies a normal (full-rang) Aztec code. |

## [iDataMatrixDetails](auxiliary-iDataMatrixDetails.md)

`iDataMatrixDetails` is one of the [`detailedResult`](auxiliary-TextResult.md#detailedresult) in class `iTextResult`. It stores the DataMatrix code details.

```objc
@interface iDataMatrixDetails
```  

| Attribute | Type | Descriptions |
|---------- |-----|------|
| [`moduleSize`](auxiliary-iDataMatrixDetails.md#modulesize) | *NSInteger* | The barcode module size (the minimum bar width in pixel). |
| [`rows`](auxiliary-iDataMatrixDetails.md#rows) | *NSInteger* | The row count of the barcode. |
| [`columns`](auxiliary-iDataMatrixDetails.md#columns) | *NSInteger* | The column count of the barcode. |
| [`dataRegionRows`](auxiliary-iDataMatrixDetails.md#dataregionrows) | *NSInteger* | The data region row count of the barcode. |
| [`dataRegionColumns`](auxiliary-iDataMatrixDetails.md#dataregioncolumns) | *NSInteger* | The data region column count of the barcode. |
| [`dataRegionNumber`](auxiliary-iDataMatrixDetails.md#dataregionnumber) | *NSInteger* | The data region count. |

## [iOneDCodeDetails](auxiliary-iOneDCodeDetails.md)

`iOneDCodeDetails` is one of the [`detailedResult`](auxiliary-TextResult.md#detailedresult) in class `iTextResult`. It stores the OneD code details.

```objc
@interface iOneDCodeDetails
```  

| Attribute | Type | Descriptions |
|---------- |-----| ---- |
| [`moduleSize`](auxiliary-iOneDCodeDetails.md#modulesize) | *NSInteger* | The barcode module size (the minimum bar width in pixel). |
| [`startCharsBytes`](auxiliary-iOneDCodeDetails.md#startcharsbytes) | *NSData \** | The start chars in a byte array. |
| [`startCharsBytesLength`](auxiliary-iOneDCodeDetails.md#startcharsbyteslength) | *NSInteger* | The length of the start chars byte array. |
| [`stopCharsBytes`](auxiliary-iOneDCodeDetails.md#stopcharsbytes) | *NSData \** | The stop chars in a byte array. |
| [`stopCharsBytesLength`](auxiliary-iOneDCodeDetails.md#stopcharsbyteslength) | *NSInteger* | The length of the stop chars byte array. |
| [`checkDigitBytes`](auxiliary-iOneDCodeDetails.md#checkdigitbytes) | *NSData \** | The check digit chars in a byte array. |
| [`checkDigitBytesLength`](auxiliary-iOneDCodeDetails.md#checkdigitbyteslength) | *NSInteger* | The length of the check digit chars byte array. |

## [iPDF417Details](auxiliary-iPDF417Details.md)

`iPDF417Details` is one of the [`detailedResult`](auxiliary-TextResult.md#detailedresult) in class `iTextResult`. It stores the PDF417 code details.

```objc
@interface iPDF417Details
```

| Attribute | Type | Descriptions |
|---------- |------|------------ |
| [`moduleSize`](auxiliary-iPDF417Details.md#modulesize) | *NSInteger* | The barcode module size (the minimum bar width in pixel). |
| [`rows`](auxiliary-iPDF417Details.md#rows) | *NSInteger* | The row count of the barcode. |
| [`columns`](auxiliary-iPDF417Details.md#columns) | *NSInteger* | The column count of the barcode. |
| [`errorCorrectionLevel`](auxiliary-iPDF417Details.md#errorcorrectionlevel) | *NSInteger* | The error correction level of the barcode. |

## [iQRCodeDetails](auxiliary-iQRCodeDetails.md)

`iQRCodeDetails` is one of the [`detailedResult`](auxiliary-TextResult.md#detailedresult) in class `iTextResult`. It stores the QRCode details.

```objc
@interface iQRCodeDetails
```  

| Attribute | Type | Descriptions |
|---------- | ---- |-----|
| [`moduleSize`](auxiliary-iQRCodeDetails.md#modulesize) | *NSInteger* | The barcode module size (the minimum bar width in pixels). |
| [`rows`](auxiliary-iQRCodeDetails.md#rows) | *NSInteger* | The row count of the barcode.   |
| [`columns`](auxiliary-iQRCodeDetails.md#columns) | *NSInteger* | The column count of the barcode. |
| [`errorCorrectionLevel`](auxiliary-iQRCodeDetails.md#errorcorrectionlevel) | *NSInteger* | The error correction level of the barcode.   |
| [`version`](auxiliary-iQRCodeDetails.md#version) | *NSInteger* | The version of the QR Code. |
| [`model`](auxiliary-iQRCodeDetails.md#model) | *NSInteger* | Number of the models. |
| [`mode`](auxiliary-iQRCodeDetails.md#mode) | *NSInteger* | Identify the first data encoding mode. |
| [`page`](auxiliary-iQRCodeDetails.md#page) | *NSInteger* | Identify the position of the particular symbol. |
| [`totalPage`](auxiliary-iQRCodeDetails.md#totalpage) | *NSInteger* | Identify the total number of symbols to be concatenated in the Structured Append format. |
| [`parityData`](auxiliary-iQRCodeDetails.md#paritydata) | *byte* | The Parity Data shall be an 8 bit byte following the Symbol Sequence Indicator. The parity data is a value obtained by XORing byte by byte the ASCII/JIS values of all the original input data before division into symbol blocks. |

## [iSamplingImageData](auxiliary-iSamplingImageData.md)

`iSamplingImageData` stores the detailed image data in `iExtendedResult`.

```objc
@interface iSamplingImageData
```  

| Attribute | Type | Descriptions |
|---------- | ---- | ----------- |
| [`bytes`](auxiliary-iSamplingImageData.md#bytes) | *NSData\** | The sampling image data in a byte array. |
| [`width`](auxiliary-iSamplingImageData.md#width) | *NSInteger* | The width of the sampling image. |
| [`height`](auxiliary-iSamplingImageData.md#height) | *NSInteger* | The height of the sampling image. |
