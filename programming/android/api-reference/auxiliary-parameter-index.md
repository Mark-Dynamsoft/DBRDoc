---
layout: default-layout
title: Dynamsoft Barcode Reader Android API Reference - Parameter Configurations
description: This page shows the Parameter Configurations of Dynamsoft Barcode Reader for Android SDK.
keywords: Parameter Configurations, class, api reference, android
needAutoGenerateSidebar: true
needGenerateH3Content: false
noTitleIndex: true
---

# Parameter Configuration Classes

## [PublicRuntimeSettings](auxiliary-PublicRuntimeSettings.md)

You can update most of the parameter settings through the `PublicRuntimeSettings` class.

```java
class com.dynamsoft.dbr.PublicRuntimeSettings;
```

| Attribute | Type | Descriptions |
|---------- | ---- | ----------- |
| [`terminatePhase`](auxiliary-PublicRuntimeSettings.md#terminatephase) | *int* | Sets the phase to stop the barcode reading algorithm. |
| [`timeout`](auxiliary-PublicRuntimeSettings.md#timeout) | *int* | Set the maximum time spent on scanning one image (page). |
| [`maxAlgorithmThreadCount`](auxiliary-PublicRuntimeSettings.md#maxalgorithmthreadcount) | *int* | Sets the number of threads the image processing algorithm will use to decode barcodes. |
| [`expectedBarcodesCount`](auxiliary-PublicRuntimeSettings.md#expectedbarcodescount) | *int* | Sets the number of barcodes expected to be detected for each image. |
| [`barcodeFormatIds`](auxiliary-PublicRuntimeSettings.md#barcodeformatids) | *int* | BarcodeFormat group 1. Read more in [`EnumBarcodeFormat`]({{ site.enumerations }}format-enums.html#barcodeformat) |
| [`barcodeFormatIds_2`](auxiliary-PublicRuntimeSettings.md#barcodeformatids_2) | *int* | BarcodeFormat group 2. Read more in [`EnumBarcodeFormat_2`]({{ site.enumerations }}format-enums.html#barcodeformat_2) |
| [`pdfRasterDPI`](auxiliary-PublicRuntimeSettings.md#pdfrasterdpi) | *int* | Sets the output image resolution. |
| [`scaleDownThreshold`](auxiliary-PublicRuntimeSettings.md#scaledownthreshold) | *int* | Sets the threshold for the image shrinking. |
| [`binarizationModes`](auxiliary-PublicRuntimeSettings.md#binarizationmodes) | *int\[\]* | Sets the mode and priority for binarization. |
| [`localizationModes`](auxiliary-PublicRuntimeSettings.md#localizationmodes) | *int\[\]* | Sets the mode and priority for localization algorithms. |
| [`furtherModes`](auxiliary-PublicRuntimeSettings.md#furthermodes) | [`FurtherModes`](auxiliary-FurtherModes.md) | Further modes settings. Please read more in [`FurtherModes`](auxiliary-FurtherModes.md) class. |
| [`deblurLevel`](auxiliary-PublicRuntimeSettings.md#deblurlevel) | *int* | Sets the degree of blurriness of the barcode. |
| [`intermediateResultTypes`](auxiliary-PublicRuntimeSettings.md#intermediateresulttypes) | *int* | Sets which types of intermediate result to be kept for further reference. |
| [`intermediateResultSavingMode`](auxiliary-PublicRuntimeSettings.md#intermediateresultsavingmode) | *int* | Sets the mode for saving intermediate result. |
| [`resultCoordinateType`](auxiliary-PublicRuntimeSettings.md#resultcoordinatetype) | *int* | Specifies the format for the coordinates returned. |
| [`textResultOrderModes`](auxiliary-PublicRuntimeSettings.md#textresultordermodes) | *int\[\]* | Sets the mode and priority for the order of the text results returned. |
| [`returnBarcodeZoneClarity`](auxiliary-PublicRuntimeSettings.md#returnbarcodezoneclarity) | *int* | Sets whether or not to return the clarity of the barcode zone. |
| [`region`](auxiliary-PublicRuntimeSettings.md#region) | [`RegionDefinition`](auxiliary-FurtherModes.md) | Sets the scan region. Please read more in [`RegionDefinition`](auxiliary-RegionDefinition.md) Class |
| [`minBarcodeTextLength`](auxiliary-PublicRuntimeSettings.md#minbarcodetextlength) | *int* | Sets the range of barcode text length for barcodes search. |
| [`minResultConfidence`](auxiliary-PublicRuntimeSettings.md#minresultconfidence) | *int* | The minimum confidence of the result. |
| [`scaleUpModes`](auxiliary-PublicRuntimeSettings.md#scaleupmodes) | *int\[\]* | Sets the mode and priority to control the sampling methods of scale-up for linear barcode with small module sizes. |
| [`pdfReadingMode`](auxiliary-PublicRuntimeSettings.md#pdfreadingmode) | *int* | Sets the way to detect barcodes from a PDF file when using the DecodeFile method. |
| [`deblurModes`](auxiliary-PublicRuntimeSettings.md#deblurmodes) | *int\[\]* | Sets the mode and priority for deblurring. |
| [`barcodeZoneMinDistanceToImageBorders`](auxiliary-PublicRuntimeSettings.md#barcodezonemindistancetoimageborders) | *int* | Sets the minimum distance (in pixels) between the barcode zone and image borders. |

**Code Snippet**

```java
PublicRuntimeSettings runtimeSettings = barcodeReader.getRuntimeSettings();
// Make some settings here
// runtimeSettings.****** = ******
barcodeReader.updateRuntimeSettings(runtimeSettings);
```

## [FurtherModes](auxiliary-FurtherModes.md)

`FurtherModes` is an extension of the `PublicRuntimeSettings` class. Through the `FurtherModes`, you can make advanced settings to process the image for barcode reading.

```java
class com.dynamsoft.dbr.FurtherModes;
```

| Attribute | Type | Descriptions |
|---------- | ---- | ----- |
| [`colourClusteringModes`](auxiliary-FurtherModes.md#colourclusteringmodes) | *int\[\]* | Sets the mode and priority for colour categorization. |
| [`colourConversionModes`](auxiliary-FurtherModes.md#colourconversionmodes) | *int\[\]* | Sets the mode and priority for converting a colour image to a grayscale image. |
| [`grayscaleTransformationModes`](auxiliary-FurtherModes.md#grayscaletransformationmodes) | *int\[\]* | Sets the mode and priority for the grayscale image conversion. |
| [`regionPredetectionModes`](auxiliary-FurtherModes.md#regionpredetectionmodes) | *int\[\]* | Sets the region pre-detection mode for barcodes search. |
| [`imagePreprocessingModes`](auxiliary-FurtherModes.md#imagepreprocessingmodes) | *int\[\]* | Sets the mode and priority for image preprocessing algorithms. |
| [`textureDetectionModes`](auxiliary-FurtherModes.md#texturedetectionmodes) | *int\[\]* | Sets the mode and priority for texture detection. |
| [`textFilterModes`](auxiliary-FurtherModes.md#textfiltermodes) | *int\[\]* | Sets the mode and priority for text filter. |
| [`textAssistedCorrectionMode`](auxiliary-FurtherModes.md#textassistedcorrectionmode) | *int* | Sets the mode of text assisted correction for barcode decoding. |
| [`dpmCodeReadingModes`](auxiliary-FurtherModes.md#dpmcodereadingmodes) | *int\[\]* | Sets the mode and priority for DPM code reading. |
| [`deformationResistingModes`](auxiliary-FurtherModes.md#deformationresistingmodes) | *int\[\]* | Sets the mode and priority for deformation resisting. |
| [`barcodeComplementModes`](auxiliary-FurtherModes.md#barcodecomplementmodes) | *int\[\]* | Sets the mode and priority to complement the missing parts in the barcode. |
| [`barcodeColourModes`](auxiliary-FurtherModes.md#barcodecolourmodes) | *int\[\]* | Sets the mode and priority for the barcode colour mode used to process the barcode zone. |
| [`accompanyingTextRecognitionModes`](auxiliary-FurtherModes.md#accompanyingtextrecognitionmodes) | *int\[\]* | Sets the mode and priority to recognize accompanying text. |

**Code Snippet**

```java
FurtherModes furtherModes = runtimeSettings.furtherModes;
```

## [RegionDefinition](auxiliary-RegionDefinition.md)

The class stores the defined region information.

```java
class com.dynamsoft.dbr.RegionDefinition;
```

| Attribute | Type | Descriptions |
|---------- | ---- | ------------ |
| [`regionTop`](auxiliary-RegionDefinition.md#regiontop) | *int* | The top-most coordinate or percentage of the region. |
| [`regionLeft`](auxiliary-RegionDefinition.md#regionleft) | *int* | The Left-most coordinate or percentage of the region. |
| [`regionRight`](auxiliary-RegionDefinition.md#regionright) | *int* | The Right-most coordinate or percentage of the region. |
| [`regionBottom`](auxiliary-RegionDefinition.md#regionbottom) | *int* | The Bottom-most coordinate or percentage of the region. |
| [`regionMeasuredByPercentage`](auxiliary-RegionDefinition.md#regionmeasuredbypercentage) | *int* | Sets whether or not to use percentage to measure the region size. |

**Code Snippet**

```java
RegionDefinition regionDefinition = runtimeSettings.region;
```

## [FrameDecodingParameters](auxiliary-FrameDecodingParameters.md)

The parameters that helps you on frame decoding.

```java
class com.dynamsoft.dbr.FrameDecodingParameters;
```

| Attribute | Type | Descriptions |
|---------- | ---- | ------------ |
| [`maxQueueLength`](auxiliary-FrameDecodingParameters.md#maxqueuelength) | *int* | The maximum number of frames waiting for decoding. |
| [`maxResultQueueLength`](auxiliary-FrameDecodingParameters.md#maxresultqueuelength) | *int* | The maximum number of frames waiting results (text result/localization result) will be kept for further reference. |
| [`width`](auxiliary-FrameDecodingParameters.md#width) | *int* | The width of the frame image in pixels.  |
| [`height`](auxiliary-FrameDecodingParameters.md#height) | *int* | The height of the frame image in pixels. |
| [`stride`](auxiliary-FrameDecodingParameters.md#stride) | *int* | The stride (or scan width) of the frame image. |
| [`imagePixelFormat`](auxiliary-FrameDecodingParameters.md#imagepixelformat) | *int* | The image pixel format used in the image byte array. |
| [`region`](auxiliary-FrameDecodingParameters.md#region) | [`RegionDefinition`](auxiliary-RegionDefinition.md) | The region definition of the frame to calculate the internal indicator. |
| [`threshold`](auxiliary-FrameDecodingParameters.md#threshold) | *float* | The threshold used for filtering frames. |
| [`fps`](auxiliary-FrameDecodingParameters.md#fps) | *int* | The frequency of calling [`appendFrame`]({{site.android_methods}}primary-video.html#appendframe) per second. |
| [`autoFilter`](auxiliary-FrameDecodingParameters.md#autofilter) | *int* | Sets whether to filter frames automatically. |
| [`clarityCalculationMethod`](auxiliary-FrameDecodingParameters.md#claritycalculationmethod) | *int* | Sets the method used for calculating the clarity of the frames. |
| [`clarityFilterMode`](auxiliary-FrameDecodingParameters.md#clarityfiltermode) | *int* | Sets the mode used for filtering frames by calculated clarity. |

## [DCESettingParameters](auxiliary-DCESettingParameters.md)

The parameters that helps you on configuring Dynamsoft Camera Enhancer in the Barcode Reader.

```java
class com.dynamsoft.dbr.DCESettingParameters;
```

| Attribute | type | Description |
|-----------|------|-------------|
| [`cameraInstance`](auxiliary-DCESettingParameters.md#camerainstance) | *Object* | The Camera Enhancer instance |
|  [`textResultCallback`](auxiliary-DCESettingParameters.md#textresultcallback) | [`TextResultCallback`]({{site.android_api}}interface.html#textresultcallback) | Set text result callback. |
| [`textResultCallback_UserData`](auxiliary-DCESettingParameters.md#textresultcallback_userdata) | *Object*  | Transfer user data. |
| [`intermediateResultCallback`](auxiliary-DCESettingParameters.md#intermediateresultcallback) | [`IntermediateResultCallback`]({{site.android_api}}interface.html#intermediateresultcallback) | Set intermediate result callback. |
| [`IntermediateResultCallback_UserData`](auxiliary-DCESettingParameters.md#intermediateresultcallback_userdata) | *Object* | Transfer user data. |

**Code Snippet**

```java
DCESettingParameters dceSettingParameters = new DCESettingParameters();
dceSettingParameters.cameraInstance = mCameraEnhancer;
dceSettingParameters.textResultCallback = mTextResultCallback;
reader.SetCameraEnhancerParam(dceSettingParameters);
```
