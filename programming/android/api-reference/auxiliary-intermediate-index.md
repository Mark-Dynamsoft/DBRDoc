---
layout: default-layout
title: Dynamsoft Barcode Reader Android API Reference - IntermediateResult index
description: This page shows the IntermediateResult index of Dynamsoft Barcode Reader for Android SDK.
keywords: IntermediateResult, api reference, android
needAutoGenerateSidebar: true
needGenerateH3Content: False
noTitleIndex: true
---

# Intermediate Result Classes

## [IntermediateResult](auxiliary-IntermediateResult.md)

`IntermediateResult` is the class that stores the intermediate result data.

```java
class com.dynamsoft.dbr.IntermediateResult;
```

| Attribute | Type | Descriptions |
|---------- | ---- | ----------- |
| [`results`](auxiliary-IntermediateResult.md#results) | *Object\[\]* | One of the following types: Array of [`Contour`](auxiliary-Contour.md), Array of [`ImageData`](auxiliary-ImageData.md), Array of [`LineSegment`](auxiliary-LineSegment.md), Array of [`LocalizationResult`](auxiliary-LocalizationResult.md), Array of [`RegionOfInterest`](auxiliary-RegionOfInterest.md). |
| [`dataType`](auxiliary-IntermediateResult.md#datatype) | *int* | The data type of the intermediate result. |
| [`resultType`](auxiliary-IntermediateResult.md#resulttype) | *int* | Intermediate result type. |
| [`barcodeComplementMode`](auxiliary-IntermediateResult.md#barcodecomplementmode) | *int* | The [`EnumBarcodeComplementMode`]({{ site.enumerations }}parameter-mode-enums.html#barcodecomplementmode) used when generating the current intermediate result. |
| [`bcmIndex`](auxiliary-IntermediateResult.md#bcmindex) | *int* | The array index of current used [`EnumBarcodeComplementMode`]({{ site.enumerations }}parameter-mode-enums.html#barcodecomplementmode) in the [`barcodeComplementModes`](auxiliary-FurtherModes.md#barcodecomplementmodes) setting. |
| [`deformationResistingMode`](auxiliary-IntermediateResult.md#deformationresistingmode) | *int* | The [`EnumDeformationResistingMode`]({{ site.enumerations }}parameter-mode-enums.html#deformationresistingmode) used when generating the current intermediate result. |
| [`drmIndex`](auxiliary-IntermediateResult.md#drmindex) | *int* | The array index of current used [`EnumDeformationResistingMode`]({{ site.enumerations }}parameter-mode-enums.html#deformationresistingmode) in the [`deformationResistingModes`](auxiliary-FurtherModes.md#deformationresistingmodes) setting. |
| [`dpmCodeReadingMode`](auxiliary-IntermediateResult.md#dpmcodereadingmode) | *int* | The [`EnumDPMCodeReadingMode`]({{ site.enumerations }}parameter-mode-enums.html#dpmcodereadingmode) used when generating the current intermediate result. |
| [`dpmcrmIndex`](auxiliary-IntermediateResult.md#dpmcrmindex) | *int* | The array index of current used [`EnumDPMCodeReadingMode`]({{ site.enumerations }}parameter-mode-enums.html#dpmcodereadingmode) in the [`dpmCodeReadingModes`](auxiliary-FurtherModes.md#dpmcodereadingmodes) setting. |
| [`rotationMatrix`](auxiliary-IntermediateResult.md#rotationmatrix) | *double\[\]* | The rotation matrix. |
| [`textFilterMode`](auxiliary-IntermediateResult.md#textfiltermode) | *int* | The [`EnumTextFilterMode`]({{ site.enumerations }}parameter-mode-enums.html#textfiltermode) used when generating the current intermediate result. |
| [`tfmIndex`](auxiliary-IntermediateResult.md#tfmindex) | *int* | The array index of current used [`EnumTextFilterMode`]({{ site.enumerations }}parameter-mode-enums.html#textfiltermode) in the [`textFilterModes`](auxiliary-FurtherModes.md#textfiltermodes) setting. |
| [`localizationMode`](auxiliary-IntermediateResult.md#localizationmode) | *int* | The [`EnumLocalizationMode`]({{ site.enumerations }}parameter-mode-enums.html#localizationmode) used when generating the current intermediate result. |
| [`lmIndex`](auxiliary-IntermediateResult.md#lmindex) | *int* | The array index of current used [`EnumLocalizationMode`]({{ site.enumerations }}parameter-mode-enums.html#localizationmode) in the [`localizationModes`](auxiliary-PublicRuntimeSettings.md#localizationmodes) setting. |
| [`binarizationMode`](auxiliary-IntermediateResult.md#binarizationmode) | *int* | The [`EnumBinarizationMode`]({{ site.enumerations }}parameter-mode-enums.html#binarizationmode) used when generating the current intermediate result. |
| [`bmIndex`](auxiliary-IntermediateResult.md#bmindex) | *int* | The array index of current used [`EnumBinarizationMode`]({{ site.enumerations }}parameter-mode-enums.html#binarizationmode) in the [`binarizationModes`](auxiliary-PublicRuntimeSettings.md#binarizationmodes) setting. |
| [`imagePreprocessingMode`](auxiliary-IntermediateResult.md#imagepreprocessingmode) | *int* | The [`EnumImagePreprocessingMode`]({{ site.enumerations }}parameter-mode-enums.html#imagepreprocessingmode) used when generating the current intermediate result. |
| [`ipmIndex`](auxiliary-IntermediateResult.md#ipmindex) | *int* | The array index of current used [`EnumImagePreprocessingMode`]({{ site.enumerations }}parameter-mode-enums.html#imagepreprocessingmode) in [`imagePreprocessingModes`](auxiliary-FurtherModes.md#imagepreprocessingmodes) setting. |
| [`roiId`](auxiliary-IntermediateResult.md#roiid) | *int* | The ID of the ROI (Region Of Interest) generated by the SDK. -1 means the original image. |
| [`regionPredetectionMode`](auxiliary-IntermediateResult.md#regionpredetectionmode) | *int* | The [`EnumRegionPredetectionMode`]({{ site.enumerations }}parameter-mode-enums.html#regionpredetectionmode) used when generating the current intermediate result. |
| [`rpmIndex`](auxiliary-IntermediateResult.md#rpmindex) | *int* | The array index of current used [`EnumRegionPredetectionMode`]({{ site.enumerations }}parameter-mode-enums.html#regionpredetectionmode) in the [`regionPredetectionModes`](auxiliary-FurtherModes.md#regionpredetectionmodes) setting. |
| [`grayscaleTransformationMode`](auxiliary-IntermediateResult.md#grayscaletransformationmode) | *int* | The [`EnumGrayscaleTransformationMode`]({{ site.enumerations }}parameter-mode-enums.html#grayscaletransformationmode) used when generating the current intermediate result. |
| [`gtmIndex`](auxiliary-IntermediateResult.md#gtmindex) | *int* | The array index of current used [`EnumGrayscaleTransformationMode`]({{ site.enumerations }}parameter-mode-enums.html#grayscaletransformationmode) in the [`grayscaleTransformationModes`](auxiliary-FurtherModes.md#grayscaletransformationmodes) setting. |
| [`colourConversionMode`](auxiliary-IntermediateResult.md#colourconversionmode) | *int* | The [`EnumColourConversionMode`]({{ site.enumerations }}parameter-mode-enums.html#colourconversionmode) used when generating the current intermediate result. |
| [`cicmIndex`](auxiliary-IntermediateResult.md#cicmindex) | *int* | The array index of current used [`EnumColourConversionMode`]({{ site.enumerations }}parameter-mode-enums.html#colourconversionmode) in the [`colourConversionModes`](auxiliary-FurtherModes.md#colourconversionmodes) setting. |
| [`colourClusteringMode`](auxiliary-IntermediateResult.md#colourclusteringmode) | *int* | The [`EnumColourClusteringMode`]({{ site.enumerations }}parameter-mode-enums.html#colourclusteringmode) used when generating the current intermediate result. |
| [`ccmIndex`](auxiliary-IntermediateResult.md#ccmindex) | *int* | The array index of current used [`EnumColourClusteringMode`]({{ site.enumerations }}parameter-mode-enums.html#colourclusteringmode) in the [`colourClusteringModes`](auxiliary-FurtherModes.md#colourclusteringmodes) setting. |
| [`scaleDownRatio`](auxiliary-IntermediateResult.md#scaledownratio) | *int* | The scale down ratio. |
| [`frameId`](auxiliary-IntermediateResult.md#frameid) | *int* | The ID of the operated frame. |
| [`rpmColourArgumentIndex`](auxiliary-IntermediateResult.md#rpmcolourargumentindex) | *int* | The index of the rpm colour argument. |

**Code Snippet**

```java
barcodeReader.initIntermediateResults(EnumIntermediateResultType.IRT_ORIGINAL_IMAGE);
IntermediateResult[] intermediateResults = barcodeReader.getIntermediateResults();
```

## [Contour](auxiliary-Contour.md)

`contour` is one of the [`results`](auxiliary-IntermediateResult.md#results) type in `IntermediateResult`.

```java
class com.dynamsoft.dbr.Contour;
```

| Attribute | Type | Description |
|---------- | ---- | ----------- |
| [`points`](auxiliary-Contour.md#points) | *Point\[\]* | The array of the points that surround the barcode area. |

**Code Snippet**

```java
Contour[] contours = (Contour[]) intermediateResults[i].results;
```

## [ImageData](auxiliary-ImageData.md)

`ImageData` is one of the [`results`](auxiliary-IntermediateResult.md#results) type in `IntermediateResult`.

```java
class com.dynamsoft.dbr.ImageData;
```

| Attribute | Type | Description |
|---------- | ---- | ----------- |
| [`bytes`](auxiliary-ImageData.md#bytes) | *byte\[\]* | The image data content in a byte array. |
| [`width`](auxiliary-ImageData.md#width) | *int* | The width of the image in pixels. |
| [`height`](auxiliary-ImageData.md#height) | *int* | The height of the image in pixels. |
| [`stride`](auxiliary-ImageData.md#stride) | *int* | The stride (or scan width) of the image. |
| [`format`](auxiliary-ImageData.md#format) | *int* | The image pixel format used in the image byte array. |

**Code Snippet**

```java
ImageData[] imageData = (ImageData[]) intermediateResults[i].results;
```

## [LineSegment](auxiliary-LineSegment.md)

`LineSegment` is one of the [`results`](auxiliary-IntermediateResult.md#results) type in `IntermediateResult`.

```java
class com.dynamsoft.dbr.LineSegment;
```

| Attribute | Type | Description |
|---------- | ---- | ----------- |
| [`startPoint`](auxiliary-LineSegment.md#startpoint) | [`Point`](auxiliary-Point.md) | The start point of the line segment. |
| [`endPoint`](auxiliary-LineSegment.md#endpoint) | [`Point`](auxiliary-Point.md) | The end point of the line segment. |
| [`linesConfidenceCoefficients`](auxiliary-LineSegment.md#linesconfidencecoefficients) | *byte\[\]* | The confidence coefficients for lines. |

**Code Snippet**

```java
LineSegment[] lineSegment = (LineSegment[]) intermediateResults[i].results;
```

## [RegionOfInterest](auxiliary-RegionOfInterest.md)

`RegionOfInterest` is one of the [`results`](auxiliary-IntermediateResult.md#results) type in `IntermediateResult`.

```java
class com.dynamsoft.dbr.RegionOfInterest;
```

| Attribute | Type | Description |
|---------- | ---- | ----------- |
| [`roiId`](#roiid) | *int* | The ID generated by the SDK. |
| [`point`](#point) | [`Point`](auxiliary-Point.md) | The left top point of the region. |
| [`width`](#width) | *int* | The width of the region. |
| [`height`](#height) | *int* | The height of the region. |

**Code Snippet**

```java
RegionOfInterest[] regionOfInterest = (RegionOfInterest[]) intermediateResults[i].results;
```

## LocalizationResult

View more in [TextResult >> LocalizationResult](auxiliary-LocalizationResult.md)

```java
class com.dynamsoft.dbr.LocalizationResult;
```

`LocalizationResult` can be the extension of class [`TextResult`](auxiliary-TextResult.md) and class [`IntermediateResult`](auxiliary-IntermediateResult.md). It stores the localization result information.

| Attribute | Type | Description |
|---------- | ---- | ----------- |
| [`terminatePhase`](auxiliary-LocalizationResult.md#terminatephase) | *int* | The terminate phase of localization result. |
| [`barcodeFormat`](auxiliary-LocalizationResult.md#barcodeformat) | *int* | Barcode type in BarcodeFormat group 1. |
| [`barcodeFormatString`](auxiliary-LocalizationResult.md#barcodeformatstring) | *String* | Barcode type in BarcodeFormat group 1 as string. |
| [`barcodeFormat_2`](auxiliary-LocalizationResult.md#barcodeformat_2) | *int* | Barcode type in BarcodeFormat group 2. |
| [`barcodeFormatString_2`](auxiliary-LocalizationResult.md#barcodeformatstring_2) | *String* | Barcode type in BarcodeFormat group 2 as string. |
| [`resultPoints`](auxiliary-LocalizationResult.md#resultpoints) | [`Point`](auxiliary-Point.md)\[\] | The vertices coordinates information of the barcode region. |
| [`angle`](auxiliary-LocalizationResult.md#angle) | *int* | The angle of a barcode. Values range is from 0 to 360. |
| [`moduleSize`](auxiliary-LocalizationResult.md#modulesize) | *int* | The barcode module size (the minimum bar width in pixel). |
| [`pageNumber`](auxiliary-LocalizationResult.md#pagenumber) | *int* | The page number the barcode located in. The index is 0-based. |
| [`regionName`](auxiliary-LocalizationResult.md#regionname) | *String* | The region name the barcode located in. |
| [`documentName`](auxiliary-LocalizationResult.md#documentname) | *String* | The document name. |
| [`resultCoordinateType`](auxiliary-LocalizationResult.md#resultcoordinatetype) | *int* | The coordinate type. |
| [`accompanyingTextBytes`](auxiliary-LocalizationResult.md#accompanyingtextbytes) | *byte\[\]* | The accompanying text content in a byte array. |
| [`confidence`](auxiliary-LocalizationResult.md#confidence) | *int* | The confidence of the localization result. |

**Code Snippet**

```java
LocalizationResult[] localizationResult = (LocalizationResult[]) intermediateResults[i].results;
```
