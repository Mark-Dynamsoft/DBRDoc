---
layout: default-layout
title: Dynamsoft Barcode Reader Objective-C & Swift API Reference - Main Page
description: This is the main page of Dynamsoft Barcode Reader for iOS SDK API Reference.
keywords: api reference, objective-c, oc, swift
needAutoGenerateSidebar: true
needGenerateH3Content: true
noTitleIndex: true
breadcrumbText: iOS API Reference
---

# API Reference - iOS

## DynamsoftBarcodeReader Class

### Initialize
  
  | Method               | Description |
  |----------------------|-------------|
  | [`init`](primary-initialize.md#init) | Create an instance of Dynamsoft Barcode Reader. |
  | [`dispose`](primary-initialize.md#dispose) | Destroy the instance of Dynamsoft Barcode Reader. |

### Decode

  | Method               | Description |
  |----------------------|-------------|
  | [`decodeFileWithName`](primary-decode.md#decodefilewithname) | Decode barcodes from a specified image file. |
  | [`decodeImage`](primary-decode.md#decodeimage) | Decode barcodes from an image file in memory. |
  | [`decodeBuffer`](primary-decode.md#decodebuffer) | Decode barcodes from raw buffer. |
  | [`decodeBase64`](primary-decode.md#decodebase64) | Decode barcodes from a base64 encoded string. |
  | [`createIntermediateResult`](primary-decode.md#createintermediateresult) | Inits an intermediateResult struct with default values. |
  | [`decodeIntermediateResults`](primary-decode.md#decodeintermediateresults) | Decodes barcode from intermediate results. |

### Camera Enhancer
  
   | Method               | Description |
   |----------------------|-------------|
   | [`SetCameraEnhancerParam`](primary-camera.md#setcameraenhancerparam) | Set the parameters for Dynamsoft Camera Enhancer in Barcode reader |

### License

  | Method               | Description |
  |----------------------|-------------|
  | [`license`](primary-license.md#license) | Stores the license used in DynamsoftBarcodeReader. |
  | [`initWithLicense`](primary-license.md#initwithlicense) | Read product key and activate the SDK. |
  | [`initWithLicenseFromServer`](primary-license.md#initwithlicensefromserver) | Initialize license and connect to the specified server for online verification. |
  | [`outputLicenseToString`](primary-license.md#outputlicensetostring) | Output the license content to a string from the license server. |
  | [`initLicenseFromDLS`](primary-license.md#initlicensefromdls) | Initializes the barcode reader license and connects to the specified server for online verification. |
  | [`initLicenseFromLTS`](primary-license.md#initlicensefromlts) | `Deprecated`, please use [initLicenseFromDLS](primary-license.md#initlicensefromdls) instead. |

### Parameter and Runtime Settings

#### Basic
  
  | Method               | Description |
  |----------------------|-------------|
  | [`setModeArgument`](primary-parameter-and-runtime-settings-basic.md#setmodeargument) | Set argument value for the specified mode parameter. |
  | [`getModeArgument`](primary-parameter-and-runtime-settings-basic.md#getmodeargument) | Get argument value for the specified mode parameter. |
  | [`getRuntimeSettings`](primary-parameter-and-runtime-settings-basic.md#getruntimesettings) | Get current runtime settings. |
  | [`updateRuntimeSettings`](primary-parameter-and-runtime-settings-basic.md#updateruntimesettings) | Modify and update the current runtime settings. |
  | [`resetRuntimeSettings`](primary-parameter-and-runtime-settings-basic.md#resetruntimesettings) | Reset runtime settings to default. |

#### Advanced
  
  | Method               | Description |
  |----------------------|-------------|
  | [`initRuntimeSettingsWithFile`](primary-parameter-and-runtime-settings-advanced.md#initruntimesettingswithfile) | Initialize runtime settings with the settings in a given JSON file. |
  | [`initRuntimeSettingsWithString`](primary-parameter-and-runtime-settings-advanced.md#initruntimesettingswithstring) | Initialize runtime settings with the settings in a given JSON string. |
  | [`appendTplFileToRuntimeSettings`](primary-parameter-and-runtime-settings-advanced.md#appendtplfiletoruntimesettings) | Append a new template file to the current runtime settings. |
  | [`appendTplStringToRuntimeSettings`](primary-parameter-and-runtime-settings-advanced.md#appendtplstringtoruntimesettings) | Append a new template string to the current runtime settings. |
  | [`allParameterTemplateNames`](primary-parameter-and-runtime-settings-advanced.md#allparametertemplatenames) | Get the count of the parameter templates. |
  | [`outputSettingsToFile`](primary-parameter-and-runtime-settings-advanced.md#outputsettingstofile) | Output runtime settings to a settings file (JSON file). |
  | [`outputSettingsToString`](primary-parameter-and-runtime-settings-advanced.md#outputsettingstostring) | Output runtime settings to a string. |

### Result

  | Method               | Description |
  |----------------------|-------------|
  | [`getIntermediateResult`](primary-result.md#getintermediateresult) | Get intermediate results. |

### Video

#### Decode

  | Method               | Description |
  |----------------------|-------------|
  | [`startFrameDecoding`](primary-video.md#startframedecoding) | Decode barcodes from inner frame queue. |
  | [`startFrameDecodingEx`](primary-video.md#startframedecodingex) | Decode barcodes from inner frame queue. |
  | [`appendFrame`](primary-video.md#appendframe) | Append a frame image buffer to the inner frame queue. |
  | [`stopFrameDecoding`](primary-video.md#stopframedecoding) | Stop thread used for frame decoding. |

#### Parameter

  | Method               | Description |
  |----------------------|-------------|
  | [`getFrameDecodingParameters`](primary-video.md#getframedecodingparameters) | Initialize frame decoding parameter. |

#### Status retrieval

  | Method               | Description |
  |----------------------|-------------|
  | [`getLengthOfFrameQueue`](primary-video.md#getlengthofframequeue) | Get length of current inner frame queue. |

## [Error Code]({{ site.enumerations }}error-code.html)

## Auxiliary Classes

- [`iAztecDetails`](auxiliary-iAztecDetails.md)
- [`iContour`](auxiliary-iContour.md)
- [`iDataMatrixDetails`](auxiliary-iDataMatrixDetails.md)
- [`iDBRPoint`](auxiliary-iDBRPoint.md)
- [`iDCESettingParameters`](auxiliary-iDCESettingParameters.md)
- [`iDMDLSConnectionParameters`](auxiliary-iDMDLSConnectionParameters.md)
- [`iExtendedResult`](auxiliary-iExtendedResult.md)
- [`iFrameDecodingParameters`](auxiliary-iFrameDecodingParameters.md)
- [`iFurtherModes`](auxiliary-iFurtherModes.md)
- [`iImageData`](auxiliary-iImageData.md)
- [`iIntermediateResult`](auxiliary-iIntermediateResult.md)
- [`iLineSegment`](auxiliary-iLineSegment.md)
- [`iLocalizationResult`](auxiliary-iLocalizationResult.md)
- [`iOneDCodeDetails`](auxiliary-iOneDCodeDetails.md)
- [`iPDF417Details`](auxiliary-iPDF417Details.md)
- [`iPublicRuntimeSettings`](auxiliary-iPublicRuntimeSettings.md)
- [`iQRCodeDetails`](auxiliary-iQRCodeDetails.md)
- [`iQuadrilateral`](auxiliary-iQuadrilateral.md)
- [`iRegionDefinition`](auxiliary-iRegionDefinition.md)
- [`iRegionOfInterest`](auxiliary-iRegionOfInterest.md)
- [`iSamplingImageData`](auxiliary-iSamplingImageData.md)
- [`iTextResult`](auxiliary-iTextResult.md)

## Protocol

  | Protocol | Description |
  | -------- | ----------- |
  | [`DBRTextResultDelegate`]({{ site.oc_api }}protocol-dbrtextresultdelegate.html) | Protocol for a delegate to handle callback when text result returned. |
  | [`DBRIntermediateResultDelegate`]({{ site.oc_api }}protocol-dbrintermediateresultdelegate.html) | Protocol for a delegate to handle callback when intermediate result returned. |
  | [`DBRErrorDelegate`]({{ site.oc_api }}protocol-dbrerrordelegate.html) | Protocol for a delegate to handle callback when an error returned. |
  | [`DBRServerLicenseVerificationDelegate`]({{ site.oc_api }}protocol-dbrserverlicenseverificationdelegate.html) | Protocol for a delegate to handle callback when license verification message returned. |
  | [`DMDLSLicenseVerificationDelegate`]({{ site.oc_api }}protocol-dmdlslicenseverificationdelegate.html) | Protocol for a delegate to handle callback when license verification message returned. |

## Enumerations

- [`EnumAccompanyingTextRecognitionMode`]({{ site.enumerations }}parameter-mode-enums.html#accompanyingtextrecognitionmode)
- [`EnumBarcodeColourMode`]({{ site.enumerations }}parameter-mode-enums.html#barcodecolourmode)
- [`EnumBarcodeComplementMode`]({{ site.enumerations }}parameter-mode-enums.html#barcodecomplementmode)
- [`EnumBarcodeFormat`]({{ site.enumerations }}format-enums.html#barcodeformat)
- [`EnumBarcodeFormat_2`]({{ site.enumerations }}format-enums.html#barcodeformat_2)
- [`EnumBinarizationMode`]({{ site.enumerations }}parameter-mode-enums.html#binarizationmode)
- [`EnumClarityCalculationMethod`]({{ site.enumerations }}frame-decoding-enums.html#claritycalculationmethod)
- [`EnumClarityFilterMode`]({{ site.enumerations }}frame-decoding-enums.html#clarityfiltermode)
- [`EnumColourClusteringMode`]({{ site.enumerations }}parameter-mode-enums.html#colourclusteringmode)
- [`EnumColourConversionMode`]({{ site.enumerations }}parameter-mode-enums.html#colourconversionmode)
- [`EnumConflictMode`]({{ site.enumerations }}parameter-mode-enums.html#conflictmode)
- [`EnumDeblurMode`]({{ site.enumerations }}parameter-mode-enums.html#deblurmode)
- [`EnumDeformationResistingMode`]({{ site.enumerations }}parameter-mode-enums.html#deformationresistingmode)
- [`EnumDMChargeWay`]({{ site.enumerations }}other-enums.html#dm_chargeway)
- [`EnumDMLicenseModule`]({{ site.enumerations }}other-enums.html#dm_licensemodule)
- [`EnumDMUUIDGenerationMethod`]({{ site.enumerations }}other-enums.html#dm_uuidgenerationmethod)
- [`EnumDPMCodeReadingMode`]({{ site.enumerations }}parameter-mode-enums.html#dpmcodereadingmode)
- [`EnumGrayscaleTransformationMode`]({{ site.enumerations }}parameter-mode-enums.html#grayscaletransformationmode)
- [`EnumImagePixelFormat`]({{ site.enumerations }}other-enums.html#imagepixelformat)
- [`EnumImagePreprocessingMode`]({{ site.enumerations }}parameter-mode-enums.html#imagepreprocessingmode)
- [`EnumIMResultDataType`]({{ site.enumerations }}result-enums.html#imresultdatatype)
- [`EnumIntermediateResultSavingMode`]({{ site.enumerations }}result-enums.html#intermediateresultsavingmode)
- [`EnumIntermediateResultType`]({{ site.enumerations }}result-enums.html#intermediateresulttype)
- [`EnumLocalizationMode`]({{ site.enumerations }}parameter-mode-enums.html#localizationmode)
- [`EnumPDFReadingMode`]({{ site.enumerations }}parameter-mode-enums.html#pdfreadingmode)
- [`EnumQRCodeErrorCorrectionLevel`]({{ site.enumerations }}other-enums.html#qrcodeerrorcorrectionlevel)
- [`EnumRegionPredetectionMode`]({{ site.enumerations }}parameter-mode-enums.html#regionpredetectionmode)
- [`EnumResultCoordinateType`]({{ site.enumerations }}result-enums.html#resultcoordinatetype)
- [`EnumResultType`]({{ site.enumerations }}result-enums.html#resulttype)
- [`EnumScaleUpMode`]({{ site.enumerations }}parameter-mode-enums.html#scaleupmode)
- [`EnumTerminatePhase`]({{ site.enumerations }}parameter-mode-enums.html#terminatephase)
- [`EnumTextFilterMode`]({{ site.enumerations }}parameter-mode-enums.html#textfiltermode)
- [`EnumTextResultOrderMode`]({{ site.enumerations }}result-enums.html#textresultordermode)
- [`EnumTextureDetectionMode`]({{ site.enumerations }}parameter-mode-enums.html#texturedetectionmode)
