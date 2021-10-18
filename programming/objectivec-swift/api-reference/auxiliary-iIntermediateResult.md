---
layout: default-layout
title: Dynamsoft Barcode Reader Objective-C & Swift API Reference - iIntermediateResult Class
description: This page shows the iIntermediateResult Class of Dynamsoft Barcode Reader for iOS SDK.
keywords: iIntermediateResult, class, api reference, objective-c, oc, swift
needAutoGenerateSidebar: true
noTitleIndex: true
---

# Class iIntermediateResult

Stores the intermediate result.

```objc
@interface iIntermediateResult 
```  

| Attribute | Type | Descriptions |
|---------- | ---- | ----------- |
| [`resultsCount`](#resultscount) | *NSInteger* | The total result count. |
| [`results`](#results) | *NSObject\** | One of the following types: Array of [`iContour`](auxiliary-iContour.md), Array of [`iImageData`](auxiliary-iImageData.md), Array of [`iLineSegment`](auxiliary-iLineSegment.md), Array of [`iLocalizationResult`](auxiliary-iLocalizationResult.md), Array of [`iRegionOfInterest`](auxiliary-iRegionOfInterest.md). |
| [`dataType`](#datatype) | [`EnumIMResultDataType`]({{ site.enumerations }}result-enums.html#imresultdatatype) | The data type of the intermediate result. |
| [`resultType`](#resulttype) | [`EnumIntermediateResultType`]({{ site.enumerations }}result-enums.html#intermediateresulttype) | Intermediate result type. |
| [`barcodeComplementMode`](#barcodecomplementmode) | [`EnumBarcodeComplementMode`]({{ site.enumerations }}parameter-mode-enums.html#barcodecomplementmode) | The [`EnumBarcodeComplementMode`]({{ site.enumerations }}parameter-mode-enums.html#barcodecomplementmode) used when generating the current intermediate result. |
| [`bcmIndex`](#bcmindex) | *NSInteger* | The array index of current used [`EnumBarcodeComplementMode`]({{ site.enumerations }}parameter-mode-enums.html#barcodecomplementmode) in the [`barcodeComplementModes`](auxiliary-FurtherModes.md#barcodecomplementmodes) setting. |
| [`deformationResistingMode`](#deformationresistingmode) | [`EnumDeformationResistingMode`]({{ site.enumerations }}parameter-mode-enums.html#deformationresistingmode) | The [`EnumDeformationResistingMode`]({{ site.enumerations }}parameter-mode-enums.html#deformationresistingmode) used when generating the current intermediate result. |
| [`drmIndex`](#drmindex) | *NSInteger* | The array index of current used [`EnumDeformationResistingMode`]({{ site.enumerations }}parameter-mode-enums.html#deformationresistingmode) in the [`deformationResistingModes`](auxiliary-FurtherModes.md#deformationresistingmodes) setting. |
| [`dpmCodeReadingMode`](#dpmcodereadingmode) | [`EnumDPMCodeReadingMode`]({{ site.enumerations }}parameter-mode-enums.html#dpmcodereadingmode) | The [`EnumDPMCodeReadingMode`]({{ site.enumerations }}parameter-mode-enums.html#dpmcodereadingmode) used when generating the current intermediate result. |
| [`dpmcrmIndex`](#dpmcrmindex) | *NSInteger* | The array index of current used [`EnumDPMCodeReadingMode`]({{ site.enumerations }}parameter-mode-enums.html#dpmcodereadingmode) in the [`dpmCodeReadingModes`](auxiliary-FurtherModes.md#dpmcodereadingmodes) setting. |
| [`transformationMatrix`](#transformationMatrix) | *NSArray \** | The rotation matrix. |
| [`textFilterMode`](#textfiltermode) | [`EnumTextFilterMode`]({{ site.enumerations }}parameter-mode-enums.html#textfiltermode) | The [`EnumTextFilterMode`]({{ site.enumerations }}parameter-mode-enums.html#textfiltermode) used when generating the current intermediate result. |
| [`tfmIndex`](#tfmindex) | *NSInteger* | The array index of current used [`EnumTextFilterMode`]({{ site.enumerations }}parameter-mode-enums.html#textfiltermode) in the [`textFilterModes`](auxiliary-FurtherModes.md#textfiltermodes) setting. |
| [`localizationMode`](#localizationmode) | [`EnumLocalizationMode`]({{ site.enumerations }}parameter-mode-enums.html#localizationmode) | The [`EnumLocalizationMode`]({{ site.enumerations }}parameter-mode-enums.html#localizationmode) used when generating the current intermediate result. |
| [`lmIndex`](#lmindex) | *NSInteger* | The array index of current used [`EnumLocalizationMode`]({{ site.enumerations }}parameter-mode-enums.html#localizationmode) in the [`localizationModes`](auxiliary-PublicRuntimeSettings.md#localizationmodes) setting. |
| [`binarizationMode`](#binarizationmode) | [`EnumBinarizationMode`]({{ site.enumerations }}parameter-mode-enums.html#binarizationmode) | The [`EnumBinarizationMode`]({{ site.enumerations }}parameter-mode-enums.html#binarizationmode) used when generating the current intermediate result. |
| [`bmIndex`](#bmindex) | *NSInteger* | The array index of current used [`EnumBinarizationMode`]({{ site.enumerations }}parameter-mode-enums.html#binarizationmode) in the [`binarizationModes`](auxiliary-PublicRuntimeSettings.md#binarizationmodes) setting. |
| [`imagePreprocessingMode`](#imagepreprocessingmode) | [`EnumImagePreprocessingMode`]({{ site.enumerations }}parameter-mode-enums.html#imagepreprocessingmode) | The [`EnumImagePreprocessingMode`]({{ site.enumerations }}parameter-mode-enums.html#imagepreprocessingmode) used when generating the current intermediate result. |
| [`ipmIndex`](#ipmindex) | *NSInteger* | The array index of current used [`EnumImagePreprocessingMode`]({{ site.enumerations }}parameter-mode-enums.html#imagepreprocessingmode) in [`imagePreprocessingModes`](auxiliary-FurtherModes.md#imagepreprocessingmodes) setting. |
| [`roiId`](#roiid) | *NSInteger* | The ID of the ROI (Region Of Interest) generated by the SDK. -1 means the original image. |
| [`regionPredetectionMode`](#regionpredetectionmode) | [`EnumRegionPredetectionMode`]({{ site.enumerations }}parameter-mode-enums.html#regionpredetectionmode) | The [`EnumRegionPredetectionMode`]({{ site.enumerations }}parameter-mode-enums.html#regionpredetectionmode) used when generating the current intermediate result. |
| [`rpmIndex`](#rpmindex) | *NSInteger* | The array index of current used [`EnumRegionPredetectionMode`]({{ site.enumerations }}parameter-mode-enums.html#regionpredetectionmode) in the [`regionPredetectionModes`](auxiliary-FurtherModes.md#regionpredetectionmodes) setting. |
| [`grayscaleTransformationMode`](#grayscaletransformationmode) | [`EnumGrayscaleTransformationMode`]({{ site.enumerations }}parameter-mode-enums.html#grayscaletransformationmode) | The [`EnumGrayscaleTransformationMode`]({{ site.enumerations }}parameter-mode-enums.html#grayscaletransformationmode) used when generating the current intermediate result. |
| [`gtmIndex`](#gtmindex) | *NSInteger* | The array index of current used [`EnumGrayscaleTransformationMode`]({{ site.enumerations }}parameter-mode-enums.html#grayscaletransformationmode) in the [`grayscaleTransformationModes`](auxiliary-FurtherModes.md#grayscaletransformationmodes) setting. |
| [`colourConversionMode`](#colourconversionmode) | [`EnumColourConversionMode`]({{ site.enumerations }}parameter-mode-enums.html#colourconversionmode) | The [`EnumColourConversionMode`]({{ site.enumerations }}parameter-mode-enums.html#colourconversionmode) used when generating the current intermediate result. |
| [`cicmIndex`](#cicmindex) | *NSInteger* | The array index of current used [`EnumColourConversionMode`]({{ site.enumerations }}parameter-mode-enums.html#colourconversionmode) in the [`colourConversionModes`](auxiliary-FurtherModes.md#colourconversionmodes) setting. |
| [`colourClusteringMode`](#colourclusteringmode) | [`EnumColourClusteringMode`]({{ site.enumerations }}parameter-mode-enums.html#colourclusteringmode) | The [`EnumColourClusteringMode`]({{ site.enumerations }}parameter-mode-enums.html#colourclusteringmode) used when generating the current intermediate result. |
| [`ccmIndex`](#ccmindex) | *NSInteger* | The array index of current used [`EnumColourClusteringMode`]({{ site.enumerations }}parameter-mode-enums.html#colourclusteringmode) in the [`colourClusteringModes`](auxiliary-FurtherModes.md#colourclusteringmodes) setting. |
| [`scaleDownRatio`](#scaledownratio) | *NSInteger* | The scale down ratio. |
| [`frameId`](#frameid) | *NSInteger* | The ID of the operated frame. |
| [`rpmColourArgumentIndex`](#rpmcolourargumentindex) | *NSInteger* | The index of the rpm colour argument. |

## resultsCount

The total result count.

```objc
NSInteger resultsCount
```

## results

One of the following types: Array of [`iContour`](auxiliary-iContour.md), Array of [`iImageData`](auxiliary-iImageData.md), Array of [`iLineSegment`](auxiliary-iLineSegment.md), Array of [`iLocalizationResult`](auxiliary-iLocalizationResult.md), Array of [`iRegionOfInterest`](auxiliary-iRegionOfInterest.md).

```objc
NSObject* results
```

## dataType

The data type of the intermediate result

```objc
EnumIMResultDataType dataType
```

## resultType

Intermediate result type.

```objc
EnumIntermediateResultType resultType
```

## barcodeComplementMode

The [`EnumBarcodeComplementMode`]({{ site.enumerations }}parameter-mode-enums.html#barcodecomplementmode) used when generating the current intermediate result.

```objc
EnumBarcodeComplementMode barcodeComplementMode
```

## bcmIndex

The array index of current used [`EnumBarcodeComplementMode`]({{ site.enumerations }}parameter-mode-enums.html#barcodecomplementmode) in the [`barcodeComplementModes`](iFurtherModes.md#barcodecomplementmodes) setting.

```objc
NSInteger bcmIndex
```

## deformationResistingMode

The [`EnumDeformationResistingMode`]({{ site.enumerations }}parameter-mode-enums.html#deformationresistingmode) used when generating the current intermediate result.

```objc
EnumDeformationResistingMode deformationResistingMode
```

## drmIndex

The array index of current used [`EnumDeformationResistingMode`]({{ site.enumerations }}parameter-mode-enums.html#deformationresistingmode) in the [`deformationResistingModes`](iFurtherModes.md#deformationresistingmodes) setting.

```objc
NSInteger drmIndex
```

## dpmCodeReadingMode

The [`EnumDPMCodeReadingMode`]({{ site.enumerations }}parameter-mode-enums.html#dpmcodereadingmode) used when generating the current intermediate result.

```objc
EnumDPMCodeReadingMode dpmCodeReadingMode
```

## dpmcrmIndex

The array index of current used [`EnumDPMCodeReadingMode`]({{ site.enumerations }}parameter-mode-enums.html#dpmcodereadingmode) in the [`dpmCodeReadingModes`](iFurtherModes.md#dpmcodereadingmodes) setting.

```objc
NSInteger dpmcrmIndex
```

## transformationMatrix

The rotation matrix.

```objc
NSArray* transformationMatrix[9]
```

## textFilterMode

The [`EnumTextFilterMode`]({{ site.enumerations }}parameter-mode-enums.html#textfiltermode) used when generating the current intermediate result.

```objc
EnumTextFilterMode textFilterMode
```

## tfmIndex

The array index of current used [`EnumTextFilterMode`]({{ site.enumerations }}parameter-mode-enums.html#textfiltermode) in the [`textFilterModes`](iFurtherModes.md#textfiltermodes) setting.

```objc
NSInteger tfmIndex
```

## localizationMode

The [`EnumLocalizationMode`]({{ site.enumerations }}parameter-mode-enums.html#localizationmode) used when generating the current intermediate result.

```objc
EnumLocalizationMode localizationMode
```

## lmIndex

The array index of current used [`EnumLocalizationMode`]({{ site.enumerations }}parameter-mode-enums.html#localizationmode) in the [`localizationModes`](iPublicRuntimeSettings.md#localizationmodes) setting.

```objc
NSInteger lmIndex
```

## binarizationMode

The [`EnumBinarizationMode`]({{ site.enumerations }}parameter-mode-enums.html#binarizationmode) used when generating the current intermediate result.

```objc
EnumBinarizationMode binarizationMode
```

## bmIndex

The array index of current used [`EnumBinarizationMode`]({{ site.enumerations }}parameter-mode-enums.html#binarizationmode) in the [`binarizationModes`](iPublicRuntimeSettings.md#binarizationmodes) setting.

```objc
NSInteger bmIndex
```

## imagePreprocessingMode

The [`EnumImagePreprocessingMode`]({{ site.enumerations }}parameter-mode-enums.html#imagepreprocessingmode) used when generating the current intermediate result.

```objc
EnumImagePreprocessingMode imagePreprocessingMode
```

## ipmIndex

The array index of current used [`EnumImagePreprocessingMode`]({{ site.enumerations }}parameter-mode-enums.html#imagepreprocessingmode) in [`imagePreprocessingModes`](iFurtherModes.md#imagepreprocessingmodes) setting.

```objc
NSInteger ipmIndex
```

## roiId

The ID of the ROI (Region Of Interest) generated by the SDK. -1 means the original image.

```objc
NSInteger roiId
```

## regionPredetectionMode

The [`EnumRegionPredetectionMode`]({{ site.enumerations }}parameter-mode-enums.html#regionpredetectionmode) used when generating the current intermediate result.

```objc
EnumRegionPredetectionMode regionPredetectionMode
```

## rpmIndex

The array index of current used [`EnumRegionPredetectionMode`]({{ site.enumerations }}parameter-mode-enums.html#regionpredetectionmode) in the [`regionPredetectionModes`](iFurtherModes.md#regionpredetectionmodes) setting.

```objc
NSInteger rpmIndex
```

## grayscaleTransformationMode

The [`EnumGrayscaleTransformationMode`]({{ site.enumerations }}parameter-mode-enums.html#grayscaletransformationmode) used when generating the current intermediate result.

```objc
EnumGrayscaleTransformationMode grayscaleTransformationMode
```

## gtmIndex

The array index of current used [`EnumGrayscaleTransformationMode`]({{ site.enumerations }}parameter-mode-enums.html#grayscaletransformationmode) in the [`grayscaleTransformationModes`](iFurtherModes.md#grayscaletransformationmodes) setting.

```objc
NSInteger gtmIndex
```

## colourConversionMode

The [`EnumColourConversionMode`]({{ site.enumerations }}parameter-mode-enums.html#colourconversionmode) used when generating the current intermediate result.

```objc
EnumColourConversionMode colourConversionMode
```

## cicmIndex

The array index of current used [`EnumColourConversionMode`]({{ site.enumerations }}parameter-mode-enums.html#colourconversionmode) in the [`colourConversionModes`](iFurtherModes.md#colourconversionmodes) setting.

```objc
NSInteger cicmIndex
```

## colourClusteringMode

The [`EnumColourClusteringMode`]({{ site.enumerations }}parameter-mode-enums.html#colourclusteringmode) used when generating the current intermediate result.

```objc
EnumColourClusteringMode colourClusteringMode
```

## ccmIndex

The array index of current used [`EnumColourClusteringMode`]({{ site.enumerations }}parameter-mode-enums.html#colourclusteringmode) in the [`colourClusteringModes`](iFurtherModes.md#colourclusteringmodes) setting.

```objc
NSInteger ccmIndex
```

## scaleDownRatio

The scale down ratio.

```objc
NSInteger scaleDownRatio
```

## frameId

The ID of the operated frame.

```objc
NSInteger frameId
```

## rpmColourArgumentIndex

The index of the rpm colour argument.

```objc
NSInteger rpmColourArgumentIndex
```
