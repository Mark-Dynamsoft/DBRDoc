---
layout: default-layout
title: Dynamsoft Barcode Reader Objective-C & Swift API Reference - iPublicRuntimeSettings Class
description: This page shows the iPublicRuntimeSettings Class of Dynamsoft Barcode Reader for iOS SDK.
keywords: iPublicRuntimeSettings, class, api reference, objective-c, oc, swift
needAutoGenerateSidebar: true
noTitleIndex: true
---

# Class iPublicRuntimeSettings

Defines a struct to configure the barcode reading runtime settings. These settings control the barcode recognition process such as which barcode types to decode.

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

## terminatePhase

Sets the phase to stop the barcode reading algorithm.

```objc
EnumTerminatePhase terminatePhase
```

**Value Range**

Any one of the [`EnumTerminatePhase`]({{ site.enumerations }}parameter-mode-enums.html#terminatephase) Enumeration items

**Default Value**

`EnumTerminatePhaseRecognized`

**Remarks**

When the recognition result is not desired, you can set this parameter can be set to skip certain processing stages.

**See Also**

[`EnumTerminatePhase`]({{ site.enumerations }}parameter-mode-enums.html#terminatephase)

## timeout

Sets the maximum amount of time (in milliseconds) that should be spent searching for a barcode per page. It does not include the time taken to load/decode an image (TIFF, PNG, etc.) from disk into memory.

```objc
NSInteger timeout
```

**Value Range**

[0, 0x7fffffff]

**Default Value**

10000

**Remarks**

If you want to stop reading barcodes after a certain period of time, you can use this parameter to set a timeout.

## maxAlgorithmThreadCount

Sets the number of threads the image processing algorithm will use to decode barcodes.

```objc
NSInteger timeout
```

**Value Range**

[1, 4]

**Default Value**

4

**Remarks**

To keep a balance between speed and quality, the library concurrently runs four different threads for barcode decoding by default.

## expectedBarcodesCount

Sets the number of barcodes expected to be detected for each image.

```objc
NSInteger expectedBarcodesCount
```

**Value Range**

[0, 0x7fffffff]

**Default Value**

0

**Remarks**

0: means Unknown and it will find at least one barcode. 1: try to find one barcode. If one barcode is found, the library will stop the localization process and perform barcode decoding. n: try to find n barcodes. If the library only finds m (m<n) barcode, it will try different algorithms till n barcodes are found or all algorithms are tried.

## barcodeFormatIds

Sets the formats of the barcode in BarcodeFormat group 1 to be read. Barcode formats in BarcodeFormat group 1 can be combined.

```objc
NSInteger barcodeFormatIds
```

**Value Range**

A combined value of [`EnumBarcodeFormat`]({{ site.enumerations }}format-enums.html#barcodeformat) Enumeration items

**Default Value**

`EnumBarcodeFormatALL`

**Remarks**

If the barcode type(s) are certain, specifying the barcode type(s) to be read will speed up the recognition process. The barcode format our library will search for is composed of [BarcodeFormat group 1]({{ site.enumerations }}format-enums.html#barcodeformat) and [BarcodeFormat group 2]({{ site.enumerations }}format-enums.html#barcodeformat_2), so you need to specify the barcode format in group 1 and group 2 individually.

**See Also**

[`EnumBarcodeFormat`]({{ site.enumerations }}format-enums.html#barcodeformat), [`EnumBarcodeFormat2`]({{ site.enumerations }}format-enums.html#barcodeformat_2)

## barcodeFormatIds_2

Sets the formats of the barcode in BarcodeFormat group 2 to be read. Barcode formats in BarcodeFormat group 2 can be combined.

```objc
NSInteger barcodeFormatIds_2
```

**Value Range**

A combined value of [`EnumBarcodeFormat2`]({{ site.enumerations }}format-enums.html#barcodeformat_2) Enumeration items

**Default Value**

`EnumBarcodeFormat2NULL`

**Remarks**

If the barcode type(s) are certain, specifying the barcode type(s) to be read will speed up the recognition process. The barcode format our library will search for is composed of [BarcodeFormat group 1]({{ site.enumerations }}format-enums.html#barcodeformat) and [BarcodeFormat group 2]({{ site.enumerations }}format-enums.html#barcodeformat_2), so you need to specify the barcode format in group 1 and group 2 individually.

**See Also**

[`EnumBarcodeFormat`]({{ site.enumerations }}format-enums.html#barcodeformat), [`EnumBarcodeFormat2`]({{ site.enumerations }}format-enums.html#barcodeformat_2)

## pdfRasterDPI

Sets the output image resolution.

```objc
NSInteger pdfRasterDPI
```

**Value Range**

[100, 600]

**Default Value**

300

**Remarks**

When decoding barcodes from a PDF file using the DecodeFile method, the library will convert the PDF file to image(s) first, then perform barcode recognition.

## scaleDownThreshold

Sets the threshold for the image shrinking.

```objc
NSInteger scaleDownThreshold
```

**Value Range**

[512, 0x7fffffff]

**Default Value**

2300

**Remarks**

If the shorter edge size is larger than the given threshold value, the library will calculate the required height and width of the barcode image and shrink the image to that size before localization. Otherwise, the library will perform barcode localization on the original image.

## binarizationModes

Sets the mode and priority for binarization.

```objc
NSArray* binarizationModes[8]
```

**Value Range**

Each array item can be any one of the [`EnumBinarizationMode`]({{ site.enumerations }}parameter-mode-enums.html#binarizationmode) Enumeration items.

**Default Value**

`[EnumBinarizationModeLocalBlock, EnumBinarizationModeSkip, EnumBinarizationModeSkip, EnumBinarizationModeSkip, EnumBinarizationModeSkip, EnumBinarizationModeSkip, EnumBinarizationModeSkip, EnumBinarizationModeSkip]`

**Remarks**

The array index represents the priority of the item. The smaller index is, the higher priority is.

**See Also**

[`EnumBinarizationMode`]({{ site.enumerations }}parameter-mode-enums.html#binarizationmode)

## localizationModes

Sets the mode and priority for localization algorithms.

```objc
NSArray* localizationModes[8]
```

**Value Range**

Each array item can be any one of the [`EnumLocalizationMode`]({{ site.enumerations }}parameter-mode-enums.html#localizationmode) Enumeration items.

**Default Value**

`[EnumLocalizationModeConnectedBlocks, EnumLocalizationModeScanDirectly, EnumLocalizationModeStatistics, EnumLocalizationModeLines, EnumLocalizationModeSkip, EnumLocalizationModeSkip, EnumLocalizationModeSkip, EnumLocalizationModeSkip]`

**Remarks**

The array index represents the priority of the item. The smaller index is, the higher priority is.

**See Also**

[`EnumLocalizationMode`]({{ site.enumerations }}parameter-mode-enums.html#localizationmode)  

## furtherModes

Sets further modes.

```objc
iFurtherModes furtherModes
```

## deblurLevel

Sets the degree of blurriness of the barcode.

```objc
NSInteger deblurLevel
```

**Value Range**

[0, 9]

**Default Value**

9

**Remarks**

If you have a blurry image, you can set this property to a larger value. The higher the value set, the more effort the library will spend to decode images, but it may also slow down the recognition process.

## intermediateResultTypes

Sets which types of intermediate result to be kept for further reference. Intermediate result types can be combined.

```objc
NSInteger intermediateResultTypes
```

**Value Range**

A combined value of [`EnumIntermediateResultType`]({{ site.enumerations }}result-enums.html#intermediateresulttype) Enumeration items

**Default Value**

0

**See Also**

[`EnumIntermediateResultType`]({{ site.enumerations }}result-enums.html#intermediateresulttype)

## intermediateResultSavingMode

Sets the mode for saving intermediate result.

```objc
EnumIntermediateResultSavingMode intermediateResultSavingMode
```

**Value Range**

A value of [`EnumIntermediateResultSavingMode`]({{ site.enumerations }}result-enums.html#intermediateresultsavingmode) Enumeration items

**Default Value**

EnumIntermediateResultSavingModeMemory

**See Also**

[`EnumIntermediateResultSavingMode`]({{ site.enumerations }}result-enums.html#intermediateresultsavingmode)

## resultCoordinateType

Specifies the format for the coordinates returned.

```objc
EnumResultCoordinateType resultCoordinateType
```

**Value Range**

Any one of the [`EnumResultCoordinateType`]({{ site.enumerations }}result-enums.html#resultcoordinatetype) Enumeration items

**Default Value**

EnumResultCoordinateTypePixel

**See Also**

[`EnumResultCoordinateType`]({{ site.enumerations }}result-enums.html#resultcoordinatetype)

## textResultOrderModes

Sets the mode and priority for the order of the text results returned.

```objc
NSArray* textResultOrderModes[8]
```

**Value Range**

Each array item can be any one of the [`EnumTextResultOrderMode`]({{ site.enumerations }}result-enums.html#textresultordermode) Enumeration items.

**Default Value**

`[EnumTextResultOrderModeConfidence, EnumTextResultOrderModePosition, EnumTextResultOrderModeFormat, EnumTextResultOrderModeSkip, EnumTextResultOrderModeSkip, EnumTextResultOrderModeSkip, EnumTextResultOrderModeSkip, EnumTextResultOrderModeSkip]`

**Remarks**

The array index represents the priority of the item. The smaller the index, the higher the priority.

**See Also**

[`EnumTextResultOrderMode`]({{ site.enumerations }}result-enums.html#textresultordermode)

## returnBarcodeZoneClarity

Sets whether or not to return the clarity of the barcode zone.

```objc
NSInteger returnBarcodeZoneClarity
```

**Value Range**

[0,1]

**Default Value**

0

**Remarks**

0: Do not return the clarity of the barcode zone; 1: Return the clarity of the barcode zone.  

## region

Sets the region definition including regionTop, regionLeft, regionRight, regionBottom, and regionMeasuredByPercentage.

```objc
iRegionDefinition region
```

## minBarcodeTextLength

Sets the range of barcode text length for barcodes search.

```objc
NSInteger minBarcodeTextLength
```

**Value Range**

[0, 0x7fffffff]

**Default Value**

0

**Remarks**

0: means no limitation on the barcode text length.

## minResultConfidence

The minimum confidence of the result.

```objc
NSInteger minResultConfidence
```

**Value Range**

[0, 100]

**Default Value**

0

**Remarks**

0: means no limitation on the result confidence.

## scaleUpModes

Sets the mode and priority to control the sampling methods of scale-up for linear barcode with small module sizes.

```objc
NSArray* scaleUpModes[8]
```

**Value Range**

Each array item can be any one of the [`EnumScaleUpMode`]({{ site.enumerations }}parameter-mode-enums.html#scaleupmode) Enumeration items.

**Default Value**

`[EnumScaleUpModeAuto, EnumScaleUpModeSkip, EnumScaleUpModeSkip, EnumScaleUpModeSkip, EnumScaleUpModeSkip, EnumScaleUpModeSkip, EnumScaleUpModeSkip, EnumScaleUpModeSkip]`

**Remarks**

The array index represents the priority of the item. The smaller the index, the higher the priority.

**See Also**

[`EnumScaleUpMode`]({{ site.enumerations }}parameter-mode-enums.html#scaleupmode)

## pdfReadingMode

Sets the way to detect barcodes from a PDF file when using the DecodeFile method.

```objc
EnumPDFReadingMode pdfReadingMode
```

**Value Range**

Any one of the [`EnumPDFReadingMode`]({{ site.enumerations }}parameter-mode-enums.html#pdfreadingmode) Enumeration items.

**Default Value**

`EnumPDFReadingModeAuto`  

**See Also**

[`EnumPDFReadingMode`]({{ site.enumerations }}parameter-mode-enums.html#pdfreadingmode)

## deblurModes

Sets the mode and priority for deblurring.

```objc
NSArray* deblurModes[10]
```

**Value Range**

Each array item can be any one of the [`EnumDeblurMode`]({{ site.enumerations }}parameter-mode-enums.html#deblurmode) Enumeration items.

**Default Value**

`[EnumDeblurModeSkip, EnumDeblurModeSkip, EnumDeblurModeSkip, EnumDeblurModeSkip, EnumDeblurModeSkip, EnumDeblurModeSkip, EnumDeblurModeSkip, EnumDeblurModeSkip, EnumDeblurModeSkip, EnumDeblurModeSkip]`

**Remarks**

The array index represents the priority of the item. The smaller index is, the higher priority is.

**See Also**

[`EnumDeblurMode`]({{ site.enumerations }}parameter-mode-enums.html#deblurmode)

## barcodeZoneMinDistanceToImageBorders
Sets the minimum distance (in pixels) between the barcode zone and image borders.

```objc
NSInteger barcodeZoneMinDistanceToImageBorders
```

**Value Range**

[0, 0x7fffffff]

**Default Value**

0

**Remarks**

0: means no limitation on the distance.
