---
layout: default-layout
title: Dynamsoft Barcode Reader iOS API Reference - iIntermediateResult index
description: This page shows the iIntermediateResult index of Dynamsoft Barcode Reader for iOS SDK.
keywords: IntermediateResult, api reference, iOS
needAutoGenerateSidebar: true
needGenerateH3Content: False
noTitleIndex: true
---

# Intermediate Result Classes

## [iIntermediateResult](auxiliary-iIntermediateResult.md)

`iIntermediateResult` is the class that stores the intermediate result data.

```objc
@interface iIntermediateResult 
```  

| Attribute | Type | Description |
|---------- | ---- | ----------- |
| [`resultsCount`](auxiliary-iIntermediateResult.md#resultscount) | *NSInteger* | The total result count. |
| [`results`](auxiliary-iIntermediateResult.md#results) | *NSObject\** | One of the following types: Array of [`iContour`](auxiliary-iContour.md), Array of [`iImageData`](auxiliary-iImageData.md), Array of [`iLineSegment`](auxiliary-iLineSegment.md), Array of [`iLocalizationResult`](auxiliary-iLocalizationResult.md), Array of [`iRegionOfInterest`](auxiliary-iRegionOfInterest.md). |
| [`dataType`](auxiliary-iIntermediateResult.md#datatype) | [`EnumIMResultDataType`]({{ site.enumerations }}result-enums.html#imresultdatatype) | The data type of the intermediate result. |
| [`resultType`](auxiliary-iIntermediateResult.md#resulttype) | [`EnumIntermediateResultType`]({{ site.enumerations }}result-enums.html#intermediateresulttype) | Intermediate result type. |
| [`barcodeComplementMode`](auxiliary-iIntermediateResult.md#barcodecomplementmode) | [`EnumBarcodeComplementMode`]({{ site.enumerations }}parameter-mode-enums.html#barcodecomplementmode) | The [`EnumBarcodeComplementMode`]({{ site.enumerations }}parameter-mode-enums.html#barcodecomplementmode) used when generating the current intermediate result. |
| [`bcmIndex`](auxiliary-iIntermediateResult.md#bcmindex) | *NSInteger* | The array index of current used [`EnumBarcodeComplementMode`]({{ site.enumerations }}parameter-mode-enums.html#barcodecomplementmode) in the [`barcodeComplementModes`](auxiliary-FurtherModes.md#barcodecomplementmodes) setting. |
| [`deformationResistingMode`](auxiliary-iIntermediateResult.md#deformationresistingmode) | [`EnumDeformationResistingMode`]({{ site.enumerations }}parameter-mode-enums.html#deformationresistingmode) | The [`EnumDeformationResistingMode`]({{ site.enumerations }}parameter-mode-enums.html#deformationresistingmode) used when generating the current intermediate result. |
| [`drmIndex`](auxiliary-iIntermediateResult.md#drmindex) | *NSInteger* | The array index of current used [`EnumDeformationResistingMode`]({{ site.enumerations }}parameter-mode-enums.html#deformationresistingmode) in the [`deformationResistingModes`](auxiliary-FurtherModes.md#deformationresistingmodes) setting. |
| [`dpmCodeReadingMode`](auxiliary-iIntermediateResult.md#dpmcodereadingmode) | [`EnumDPMCodeReadingMode`]({{ site.enumerations }}parameter-mode-enums.html#dpmcodereadingmode) | The [`EnumDPMCodeReadingMode`]({{ site.enumerations }}parameter-mode-enums.html#dpmcodereadingmode) used when generating the current intermediate result. |
| [`dpmcrmIndex`](auxiliary-iIntermediateResult.md#dpmcrmindex) | *NSInteger* | The array index of current used [`EnumDPMCodeReadingMode`]({{ site.enumerations }}parameter-mode-enums.html#dpmcodereadingmode) in the [`dpmCodeReadingModes`](auxiliary-FurtherModes.md#dpmcodereadingmodes) setting. |
| [`transformationMatrix`](auxiliary-iIntermediateResult.md#transformationMatrix) | *NSArray \** | The rotation matrix. |
| [`textFilterMode`](auxiliary-iIntermediateResult.md#textfiltermode) | [`EnumTextFilterMode`]({{ site.enumerations }}parameter-mode-enums.html#textfiltermode) | The [`EnumTextFilterMode`]({{ site.enumerations }}parameter-mode-enums.html#textfiltermode) used when generating the current intermediate result. |
| [`tfmIndex`](auxiliary-iIntermediateResult.md#tfmindex) | *NSInteger* | The array index of current used [`EnumTextFilterMode`]({{ site.enumerations }}parameter-mode-enums.html#textfiltermode) in the [`textFilterModes`](auxiliary-FurtherModes.md#textfiltermodes) setting. |
| [`localizationMode`](auxiliary-iIntermediateResult.md#localizationmode) | [`EnumLocalizationMode`]({{ site.enumerations }}parameter-mode-enums.html#localizationmode) | The [`EnumLocalizationMode`]({{ site.enumerations }}parameter-mode-enums.html#localizationmode) used when generating the current intermediate result. |
| [`lmIndex`](auxiliary-iIntermediateResult.md#lmindex) | *NSInteger* | The array index of current used [`EnumLocalizationMode`]({{ site.enumerations }}parameter-mode-enums.html#localizationmode) in the [`localizationModes`](auxiliary-PublicRuntimeSettings.md#localizationmodes) setting. |
| [`binarizationMode`](auxiliary-iIntermediateResult.md#binarizationmode) | [`EnumBinarizationMode`]({{ site.enumerations }}parameter-mode-enums.html#binarizationmode) | The [`EnumBinarizationMode`]({{ site.enumerations }}parameter-mode-enums.html#binarizationmode) used when generating the current intermediate result. |
| [`bmIndex`](auxiliary-iIntermediateResult.md#bmindex) | *NSInteger* | The array index of current used [`EnumBinarizationMode`]({{ site.enumerations }}parameter-mode-enums.html#binarizationmode) in the [`binarizationModes`](auxiliary-PublicRuntimeSettings.md#binarizationmodes) setting. |
| [`imagePreprocessingMode`](auxiliary-iIntermediateResult.md#imagepreprocessingmode) | [`EnumImagePreprocessingMode`]({{ site.enumerations }}parameter-mode-enums.html#imagepreprocessingmode) | The [`EnumImagePreprocessingMode`]({{ site.enumerations }}parameter-mode-enums.html#imagepreprocessingmode) used when generating the current intermediate result. |
| [`ipmIndex`](auxiliary-iIntermediateResult.md#ipmindex) | *NSInteger* | The array index of current used [`EnumImagePreprocessingMode`]({{ site.enumerations }}parameter-mode-enums.html#imagepreprocessingmode) in [`imagePreprocessingModes`](auxiliary-FurtherModes.md#imagepreprocessingmodes) setting. |
| [`roiId`](auxiliary-iIntermediateResult.md#roiid) | *NSInteger* | The ID of the ROI (Region Of Interest) generated by the SDK. -1 means the original image. |
| [`regionPredetectionMode`](auxiliary-iIntermediateResult.md#regionpredetectionmode) | [`EnumRegionPredetectionMode`]({{ site.enumerations }}parameter-mode-enums.html#regionpredetectionmode) | The [`EnumRegionPredetectionMode`]({{ site.enumerations }}parameter-mode-enums.html#regionpredetectionmode) used when generating the current intermediate result. |
| [`rpmIndex`](auxiliary-iIntermediateResult.md#rpmindex) | *NSInteger* | The array index of current used [`EnumRegionPredetectionMode`]({{ site.enumerations }}parameter-mode-enums.html#regionpredetectionmode) in the [`regionPredetectionModes`](auxiliary-FurtherModes.md#regionpredetectionmodes) setting. |
| [`grayscaleTransformationMode`](auxiliary-iIntermediateResult.md#grayscaletransformationmode) | [`EnumGrayscaleTransformationMode`]({{ site.enumerations }}parameter-mode-enums.html#grayscaletransformationmode) | The [`EnumGrayscaleTransformationMode`]({{ site.enumerations }}parameter-mode-enums.html#grayscaletransformationmode) used when generating the current intermediate result. |
| [`gtmIndex`](auxiliary-iIntermediateResult.md#gtmindex) | *NSInteger* | The array index of current used [`EnumGrayscaleTransformationMode`]({{ site.enumerations }}parameter-mode-enums.html#grayscaletransformationmode) in the [`grayscaleTransformationModes`](auxiliary-FurtherModes.md#grayscaletransformationmodes) setting. |
| [`colourConversionMode`](auxiliary-iIntermediateResult.md#colourconversionmode) | [`EnumColourConversionMode`]({{ site.enumerations }}parameter-mode-enums.html#colourconversionmode) | The [`EnumColourConversionMode`]({{ site.enumerations }}parameter-mode-enums.html#colourconversionmode) used when generating the current intermediate result. |
| [`cicmIndex`](auxiliary-iIntermediateResult.md#cicmindex) | *NSInteger* | The array index of current used [`EnumColourConversionMode`]({{ site.enumerations }}parameter-mode-enums.html#colourconversionmode) in the [`colourConversionModes`](auxiliary-FurtherModes.md#colourconversionmodes) setting. |
| [`colourClusteringMode`](auxiliary-iIntermediateResult.md#colourclusteringmode) | [`EnumColourClusteringMode`]({{ site.enumerations }}parameter-mode-enums.html#colourclusteringmode) | The [`EnumColourClusteringMode`]({{ site.enumerations }}parameter-mode-enums.html#colourclusteringmode) used when generating the current intermediate result. |
| [`ccmIndex`](auxiliary-iIntermediateResult.md#ccmindex) | *NSInteger* | The array index of current used [`EnumColourClusteringMode`]({{ site.enumerations }}parameter-mode-enums.html#colourclusteringmode) in the [`colourClusteringModes`](auxiliary-FurtherModes.md#colourclusteringmodes) setting. |
| [`scaleDownRatio`](auxiliary-iIntermediateResult.md#scaledownratio) | *NSInteger* | The scale down ratio. |
| [`frameId`](auxiliary-iIntermediateResult.md#frameid) | *NSInteger* | The ID of the operated frame. |

## [iContour](auxiliary-icontour.md)

`contour` is one of the [`results`](#intermediateresult) type in `IntermediateResult`.

```objc
@interface iContour
```  

| Attribute | Type | Description |
|---------- | ---- | ----------- |
| [`pointsCount`](auxiliary-icontour.md#pointscount) |  *NSInteger* | The total points count of the contour. |
| [`points`](auxiliary-icontour.md#points) | [NSArray*](auxiliary-iDBRPoint.md) \* | The points array of the points that surround the barcode area.. |

## [iImageData](auxiliary-iimagedata.md)

`ImageData` is one of the [`results`](#intermediateresult) type in `IntermediateResult`.

```objc
@interface iImageData
```

| Attribute | Type | Descriptions |
|---------- | ---- | ----------- |
| [`bytes`](auxiliary-iimagedata.md#bytes) | *unsigned char\** | The image data content in a byte array. |
| [`bytesLength`](auxiliary-iimagedata.md#byteslength) | *NSInteger* | The length of the image data byte array. |
| [`width`](auxiliary-iimagedata.md#width) | *NSInteger* | The width of the image in pixels. |
| [`height`](auxiliary-iimagedata.md#height) | *NSInteger* | The height of the image in pixels. |
| [`stride`](auxiliary-iimagedata.md#stride) | *NSInteger* | The stride (or scan width) of the image. |
| [`format`](auxiliary-iimagedata.md#format) | [`EnumImagePixelFormat`]({{ site.enumerations }}other-enums.html#imagepixelformat) | The image pixel format used in the image byte array. |

## [iLineSegment](auxiliary-ilinesegment.md)

`LineSegment` is one of the [`results`](auxiliary-intermediateresult.md#results) type in `IntermediateResult`.

```objc
@interface iLineSegment
```  

| Attribute | Type | Descriptions |
|---------- | ---- | ----------- |
| [`startPoint`](auxiliary-ilinesegment.md#startpoint) | [`CGPoint`](auxiliary-iDBRPoint.md) | The start point of the line segment. |
| [`endPoint`](auxiliary-ilinesegment.md#endpoint) | [`CGPoint`](auxiliary-iDBRPoint.md) | The end point of the line segment. |
| [`linesConfidenceCoefficients`](auxiliary-ilinesegment.md#linesconfidencecoefficients) | *NSData \** | *byte\[\]* | The confidence coefficients for lines. |

## [iRegionOfInterest](auxiliary-iregionofinterest.md)

`RegionOfInterest` is one of the [`results`](auxiliary-intermediateresult.md#results) type in `IntermediateResult`.

```objc
@interface iRegionOfInterest
```

| Attribute | Type | Descriptions |
|---------- | ---- | ----------- |
| [`roiId`](auxiliary-iregionofinterest.md#roiid) | *NSInteger* | The ID generated by the SDK. |
| [`point`](auxiliary-iregionofinterest.md#point) | [`CGPoint`](auxiliaryiDBRPoint.md) | The left top point of the region. |
| [`width`](auxiliary-iregionofinterest.md#width) | *NSInteger* | The width of the region. |
| [`height`](auxiliary-iregionofinterest.md#height) | *NSInteger* | The height of the region. |

## iLocalizationResult

View more in [TextResult >> LocalizationResult](auxiliary-iLocalizationResult.md)

`LocalizationResult` can be the extension of the class [`IntermediateResult`](auxiliary-intermediateresult.md). It stores the localization result information.

```objc
@interface iLocalizationResult
```

| Attribute | Type | Description |
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
