---
layout: default-layout
title: Dynamsoft Barcode Reader iOS API Reference - Parameter Configurations
description: This page shows the Parameter Configurations of Dynamsoft Barcode Reader for iOS SDK.
keywords: Parameter Configurations, class, api reference, iOS
needAutoGenerateSidebar: true
needGenerateH3Content: false
noTitleIndex: true
---

# Parameter Configuration Classes

## [iPublicRuntimeSettings](auxiliary-iPublicRuntimeSettings.md)

You can update most of the parameter settings through the `iPublicRuntimeSettings` class.

```objc
@interface iPublicRuntimeSettings
```  

| Attribute | Type | Descriptions |
|---------- | ---- | ----------- |
| [`terminatePhase`](auxiliary-iPublicRuntimeSettings.md#terminatephase) | [`EnumTerminatePhase`]({{ site.enumerations }}parameter-mode-enums.html#terminatephase) | Sets the phase to stop the barcode reading algorithm. |
| [`timeout`](auxiliary-iPublicRuntimeSettings.md#timeout) | *NSInteger* | Set the maximum time spent on scanning one image (page). |
| [`maxAlgorithmThreadCount`](auxiliary-iPublicRuntimeSettings.md#maxalgorithmthreadcount) | *NSInteger* | Sets the number of threads the image processing algorithm will use to decode barcodes. |
| [`expectedBarcodesCount`](auxiliary-iPublicRuntimeSettings.md#expectedbarcodescount) | *NSInteger* | Sets the number of barcodes expected to be detected for each image. |
| [`barcodeFormatIds`](auxiliary-iPublicRuntimeSettings.md#barcodeformatids) | *NSInteger* | BarcodeFormat group 1. Read more in [`EnumBarcodeFormat`]({{ site.enumerations }}format-enums.html#barcodeformat) |
| [`barcodeFormatIds_2`](auxiliary-iPublicRuntimeSettings.md#barcodeformatids_2) | *NSInteger* | BarcodeFormat group 2. Read more in [`EnumBarcodeFormat_2`]({{ site.enumerations }}format-enums.html#barcodeformat_2) |
| [`pdfRasterDPI`](auxiliary-iPublicRuntimeSettings.md#pdfrasterdpi) | *NSInteger* | Sets the output image resolution. |
| [`scaleDownThreshold`](auxiliary-iPublicRuntimeSettings.md#scaledownthreshold) | *NSInteger* | Sets the threshold for the image shrinking. |
| [`binarizationModes`](auxiliary-iPublicRuntimeSettings.md#binarizationmodes) | *NSArray\** | Sets the mode and priority for binarization. |
| [`localizationModes`](auxiliary-iPublicRuntimeSettings.md#localizationmodes) | *NSArray\** | Sets the mode and priority for localization algorithms. |
| [`furtherModes`](auxiliary-iPublicRuntimeSettings.md#furthermodes) | [`FurtherModes`](auxiliary-iFurtherModes.md) | Further modes settings. Please read more in [`FurtherModes`](auxiliary-iFurtherModes.md) class. |
| [`deblurLevel`](auxiliary-iPublicRuntimeSettings.md#deblurlevel) | *NSInteger* | Sets the degree of blurriness of the barcode.
 |
| [`intermediateResultTypes`](auxiliary-iPublicRuntimeSettings.md#intermediateresulttypes) | *NSInteger* | Sets which types of intermediate result to be kept for further reference. |
| [`intermediateResultSavingMode`](auxiliary-iPublicRuntimeSettings.md#intermediateresultsavingmode) | [`EnumIntermediateResultSavingMode`]({{ site.enumerations }}result-enums.html#intermediateresultsavingmode) | Sets the mode for saving intermediate result. |
| [`resultCoordinateType`](auxiliary-iPublicRuntimeSettings.md#resultcoordinatetype) | [`EnumResultCoordinateType`]({{ site.enumerations }}result-enums.html#resultcoordinatetype) | Specifies the format for the coordinates returned. |
| [`textResultOrderModes`](auxiliary-iPublicRuntimeSettings.md#textresultordermodes) | *NSArray\** | Sets the mode and priority for the order of the text results returned. |
| [`returnBarcodeZoneClarity`](auxiliary-iPublicRuntimeSettings.md#returnbarcodezoneclarity) | *NSInteger* | Sets whether or not to return the clarity of the barcode zone. |
| [`region`](auxiliary-iPublicRuntimeSettings.md#region) | [`iRegionDefinition`](auxiliary-iRegionDefinition.md) | Sets the scan region. Please read more in [`iRegionDefinition`](auxiliary-iRegionDefinition.md) Class |
| [`minBarcodeTextLength`](auxiliary-iPublicRuntimeSettings.md#minbarcodetextlength) | *NSInteger* | Sets the range of barcode text length for barcodes search. |
| [`minResultConfidence`](auxiliary-iPublicRuntimeSettings.md#minresultconfidence) | *NSInteger* | The minimum confidence of the result. |
| [`scaleUpModes`](auxiliary-iPublicRuntimeSettings.md#scaleupmodes) | *NSArray\**| Sets the mode and priority to control the sampling methods of scale-up for linear barcode with small module sizes. |
| [`pdfReadingMode`](auxiliary-iPublicRuntimeSettings.md#pdfreadingmode) | *NSInteger* | Sets the way to detect barcodes from a PDF file when using the DecodeFile method. |
| [`deblurModes`](auxiliary-iPublicRuntimeSettings.md#deblurmodes) | *NSArray\** | Sets the mode and priority for deblurring. |
| [`barcodeZoneMinDistanceToImageBorders`](auxiliary-iPublicRuntimeSettings.md#barcodezonemindistancetoimageborders) | *NSInteger* | Sets the minimum distance (in pixels) between the barcode zone and image borders. |

## [iFurtherModes](auxiliary-iFurtherModes.md)

`FurtherModes` is an extension of the `PublicRuntimeSettings` class. Through the `FurtherModes`, you can make advanced settings to process the image for barcode reading.

```objc
@interface iFurtherModes
```

| Attribute | Type | Descriptions |
|---------- | ---- | ----- |
| [`colourClusteringModes`](auxiliary-iFurtherModes.md#colourclusteringmodes) | *NSArray*\* | Sets the mode and priority for colour categorization. |
| [`colourConversionModes`](auxiliary-iFurtherModes.md#colourconversionmodes) | *NSArray*\* | Sets the mode and priority for converting a colour image to a grayscale image. |
| [`grayscaleTransformationModes`](auxiliary-iFurtherModes.md#grayscaletransformationmodes) | *NSArray*\* | Sets the mode and priority for the grayscale image conversion. |
| [`regionPredetectionModes`](auxiliary-iFurtherModes.md#regionpredetectionmodes) | *NSArray*\* | Sets the region pre-detection mode for barcodes search. |
| [`imagePreprocessingModes`](auxiliary-iFurtherModes.md#imagepreprocessingmodes) | *NSArray*\* | Sets the mode and priority for image preprocessing algorithms. |
| [`textureDetectionModes`](auxiliary-iFurtherModes.md#texturedetectionmodes) | *NSArray*\* | Sets the mode and priority for texture detection. |
| [`textFilterModes`](auxiliary-iFurtherModes.md#textfiltermodes) | *NSArray*\* | Sets the mode and priority for text filter. |
| [`dpmCodeReadingModes`](auxiliary-iFurtherModes.md#dpmcodereadingmodes) | *NSArray*\* | Sets the mode and priority for DPM code reading. |
| [`deformationResistingModes`](auxiliary-iFurtherModes.md#deformationresistingmodes) | *NSArray*\* | Sets the mode and priority for deformation resisting. |
| [`barcodeComplementModes`](auxiliary-iFurtherModes.md#barcodecomplementmodes) | *NSArray*\* | Sets the mode and priority to complement the missing parts in the barcode. |
| [`barcodeColourModes`](auxiliary-iFurtherModes.md#barcodecolourmodes) | *NSArray*\* | Sets the mode and priority for the barcode colour mode used to process the barcode zone. |
| [`accompanyingTextRecognitionModes`](auxiliary-iFurtherModes.md#accompanyingtextrecognitionmodes) | *NSArray*\* | Sets the mode and priority to recognize accompanying text. |

## [iRegionDefinition](auxiliary-iRegionDefinition.md)

Stores the region information.

```objc
@interface iRegionDefinition
```

| Attribute | Type | Descriptions |
|---------- | ---- | ------------ |
| [`regionTop`](auxiliary-iRegionDefinition.md#regiontop) | *NSInteger* | The top-most coordinate or percentage of the region. |
| [`regionLeft`](auxiliary-iRegionDefinition.md#regionleft) | *NSInteger* | The Left-most coordinate or percentage of the region. |
| [`regionRight`](auxiliary-iRegionDefinition.md#regionright) | *NSInteger* | The Right-most coordinate or percentage of the region. |
| [`regionBottom`](auxiliary-iRegionDefinition.md#regionbottom) | *NSInteger* | The Bottom-most coordinate or percentage of the region. |
| [`regionMeasuredByPercentage`](auxiliary-iRegionDefinition.md#regionmeasuredbypercentage) | *NSInteger* | Sets whether or not to use percentage to measure the region size. |

## [iFrameDecodingParameters](auxiliary-iFrameDecodingParameters.md)

The parameters that helps you on frame decoding.

```objc
@interface iFrameDecodingParameters
```

| Attribute | Type | Descriptions |
|---------- | ---- | ------------ |
| [`maxQueueLength`](auxiliary-iFrameDecodingParameters.md#maxqueuelength) | *NSInteger* | The maximum number of frames waiting for decoding. |
| [`maxResultQueueLength`](auxiliary-iFrameDecodingParameters.md#maxresultqueuelength) | *NSInteger* | The maximum number of frames waiting results (text result/localization result) will be kept for further reference. |
| [`width`](auxiliary-iFrameDecodingParameters.md#width) | *NSInteger* | The width of the frame image in pixels.  |
| [`height`](auxiliary-iFrameDecodingParameters.md#height) | *NSInteger* | The height of the frame image in pixels. |
| [`stride`](auxiliary-iFrameDecodingParameters.md#stride) | *NSInteger* | The stride (or scan width) of the frame image. |
| [`imagePixelFormat`](auxiliary-iFrameDecodingParameters.md#imagepixelformat) | [`EnumImagePixelFormat`]({{ site.enumerations }}other-enums.html#imagepixelformat) | The image pixel format used in the image byte array. |
| [`region`](auxiliary-iFrameDecodingParameters.md#region) | [`iRegionDefinition`](auxiliary-iRegionDefinition.md) | The region definition of the frame to calculate the internal indicator. |
| [`threshold`](auxiliary-iFrameDecodingParameters.md#threshold) | *float* | The threshold used for filtering frames. |
| [`fps`](auxiliary-iFrameDecodingParameters.md#fps) | *NSInteger* | The frequency of calling [`appendFrame`]({{site.android_methods}}primary-video.html#appendframe) per second. |
| [`autoFilter`](auxiliary-iFrameDecodingParameters.md#autofilter) | *NSInteger* | Sets whether to filter frames automatically. |
| [`clarityCalculationMethod`](auxiliary-iFrameDecodingParameters.md#claritycalculationmethod) | [`EnumClarityCalculationMethod`]({{ site.enumerations }}frame-decoding-enums.html#claritycalculationmethod) | Sets the method used for calculating the clarity of the frames. |
| [`clarityFilterMode`](auxiliary-iFrameDecodingParameters.md#clarityfiltermode) | [`EnumClarityFilterMode`]({{ site.enumerations }}frame-decoding-enums.html#clarityfiltermode) | Sets the mode used for filtering frames by calculated clarity. |

## [iDCESettingParameters](auxiliary-iDCESettingParameters.md)

The parameters that helps you on configuring Dynamsoft Camera Enhancer in the Barcode Reader.

```objc
@interface iDCESettingParameters
```

| Attribute | type | Descriptions |
|-----------|------| ------------ |
| [`cameraInstance`](auxiliary-iDCESettingParameters.md#camerainstance) | *DynamsoftCameraEnhancer* | The Camera Enhancer instance |
| [`textResultDelegate`](auxiliary-iDCESettingParameters.md#textresultdelegate) | *DBRTextResultDelegate* | Set text result callback. |
| [`textResultData`](auxiliary-iDCESettingParameters.md#textresultdata) | *NSObject* | Transfer user data. |
| [`intermediateResultDelegate`](auxiliary-iDCESettingParameters.md#intermediateresultdelegate) | *DBRIntermediateResultDelegate* | Set intermediate result callback. |
| [`intermediateResultData`](auxiliary-iDCESettingParameters.md#intermediateresultdata) | *NSObject* | Transfer user data. |
