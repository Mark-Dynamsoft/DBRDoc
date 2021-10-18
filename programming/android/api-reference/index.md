---
layout: default-layout
title: Dynamsoft Barcode Reader Android API Reference - Main Page
description: This is the main page of Dynamsoft Barcode Reader for Android SDK API Reference.
keywords: api reference, android
needAutoGenerateSidebar: true
needGenerateH3Content: true
breadcrumbText: Android API Reference
noTitleIndex: true
pageStartVer: 8.6
---

# API Reference - Android

## BarcodeReader Class

### Initialize and Destroy

  | Method               | Description |
  |----------------------|-------------|
  | [`BarcodeReader`](primary-initialize-and-destroy.md#barcodereader) | Initialization of `BarcodeReader` object.|
  | [`destroy`](primary-initialize-and-destroy.md#destroy) | Destroys an instance of `BarcodeReader` object.|

### Decode

  | Method               | Description |
  |----------------------|-------------|
  | [`decodeFile`](primary-decode.md#decodefile) | Decode barcodes from a specified image file. |
  | [`decodeFileInMemory`](primary-decode.md#decodefileinmemory) | Decode barcodes from an image file in memory. |
  | [`decodeBuffer`](primary-decode.md#decodebuffer) | Decode barcodes from raw buffer. |
  | [`decodeBase64String`](primary-decode.md#decodebase64string) | Decode barcodes from a base64 encoded string. |
  | [`decodeBufferedImage`](primary-decode.md#decodebufferedimage) | Decodes barcode from a buffered image (bitmap). |
  | [`initIntermediateResult`](primary-decode.md#initintermediateresult) | Inits an intermediateResult struct with default values. |
  | [`decodeIntermediateResults`](primary-decode.md#decodeintermediateresults) | Decodes barcode from intermediate results. |

### Camera Enhancer
  
   | Method               | Description |
   |----------------------|-------------|
   | [`StartCameraEnhancer`](primary-camera.md#start-stop-pause-resume-camera-enhancer) | Start using Dynamsoft Camera Enhancer |
   | [`StopCameraEnhancer`](primary-camera.md#start-stop-pause-resume-camera-enhancer) | Stop using Dynamsoft Camera Enhancer |
   | [`PauseCameraEnhancer`](primary-camera.md#start-stop-pause-resume-camera-enhancer) | Pause the process of Dynamsoft Camera Enhancer |
   | [`ResumeCameraEnhancer`](primary-camera.md#start-stop-pause-resume-camera-enhancer) | Resume the process of Dynamsoft Camera Enhancer |
   | [`SetCameraEnhancerParam`](primary-camera.md#setcameraenhancerparam) | Set the parameters for Dynamsoft Camera Enhancer in Barcode reader |

### License
  
  | Method               | Description |
  |----------------------|-------------|
  | [`initLicense`](primary-license.md#initlicense) | Read product key and activate the SDK. |
  | [`initLicenseFromServer`](primary-license.md#initlicensefromserver) | Initialize license and connect to the specified server for online verification. |
  | [`initLicenseFromLicenseContent`](primary-license.md#initlicensefromlicensecontent) | Initialize license from the license content on client machine for offline verification. |
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
  | [`initRuntimeSettingsWithFile`](primary-parameter-and-runtime-settings-advanced.md#initruntimesettingswithfile)  | Initialize runtime settings with the settings in a given JSON file. |
  | [`initRuntimeSettingsWithString`](primary-parameter-and-runtime-settings-advanced.md#initruntimesettingswithstring) | Initialize runtime settings with the settings in a given JSON string. |
  | [`appendTplFileToRuntimeSettings`](primary-parameter-and-runtime-settings-advanced.md#appendtplfiletoruntimesettings) | Append a new template file to the current runtime settings. |
  | [`appendTplStringToRuntimeSettings`](primary-parameter-and-runtime-settings-advanced.md#appendtplstringtoruntimesettings) | Append a new template string to the current runtime settings. |
  | [`getAllParameterTemplateNames`](primary-parameter-and-runtime-settings-advanced.md#getallparametertemplatenames) | Gets the parameter templates name array. |
  | [`outputSettingsToFile`](primary-parameter-and-runtime-settings-advanced.md#outputsettingstofile) | Output runtime settings to a settings file (JSON file). |
  | [`outputSettingsToString`](primary-parameter-and-runtime-settings-advanced.md#outputsettingstostring) | Output runtime settings to a string. |

### Result

  | Method               | Description |
  |----------------------|-------------|
  | [`getIntermediateResults`](primary-result.md#getintermediateresults) | Get intermediate results. |
  | [`enableResultVerification`](primary-result.md#enableresultverification) | Verify the results before output. |
  | [`enableDuplicateFiter`](primary-result.md#enableduplicatefiter) | Output the duplicated result only once for every 3 seconds. |

### Status Retrieval

  | Method               | Description |
  |----------------------|-------------|
  | [`getVersion`](primary-status-retrieval.md#getversion) | Get version information of SDK.|

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
   | [`initFrameDecodingParameters`](primary-video.md#initframedecodingparameters) | Initialize frame decoding parameter. |

#### Callback

   | Method               | Description |
   |----------------------|-------------|
   | [`setErrorCallback`](primary-video.md#seterrorcallback) | Set callback interface to process errors generated during frame decoding. |
   | [`setTextResultCallback`](primary-video.md#settextresultcallback) | Set callback interface to process text results generated during frame decoding. |
   | [`setIntermediateResultCallback`](primary-video.md#setintermediateresultcallback) | Set callback interface to process intermediate results generated during frame decoding. |

#### Status retrieval

   | Method               | Description |
   |----------------------|-------------|
   | [`getLengthOfFrameQueue`](primary-video.md#getlengthofframequeue) | Get length of current inner frame queue. |

## [Error Code]({{ site.enumerations }}error-code.html)

## Auxiliary Classes

- [`AztecDetails`](auxiliary-AztecDetails.md)
- [`BarcodeReaderException`](auxiliary-BarcodeReaderException.md)
- [`Contour`](auxiliary-Contour.md)
- [`DataMatrixDetails`](auxiliary-DataMatrixDetails.md)
- [`DCESettingParameters`](auxiliary-DCESettingParameters.md)
- [`DMLTSConnectionParameters`](auxiliary-DMLTSConnectionParameters.md)
- [`ExtendedResult`](auxiliary-ExtendedResult.md)
- [`FrameDecodingParameters`](auxiliary-FrameDecodingParameters.md)
- [`FurtherModes`](auxiliary-FurtherModes.md)
- [`ImageData`](auxiliary-ImageData.md)
- [`IntermediateResult`](auxiliary-IntermediateResult.md)
- [`LineSegment`](auxiliary-LineSegment.md)
- [`LocalizationResult`](auxiliary-LocalizationResult.md)
- [`OneDCodeDetails`](auxiliary-OneDCodeDetails.md)
- [`PDF417Details`](auxiliary-PDF417Details.md)
- [`PublicRuntimeSettings`](auxiliary-PublicRuntimeSettings.md)
- [`QRCodeDetails`](auxiliary-QRCodeDetails.md)
- [`Quadrilateral`](auxiliary-Quadrilateral.md)
- [`RegionDefinition`](auxiliary-RegionDefinition.md)
- [`RegionOfInterest`](auxiliary-RegionOfInterest.md)
- [`SamplingImageData`](auxiliary-SamplingImageData.md)
- [`TextResult`](auxiliary-TextResult.md)

## Interfaces

  | Interfaces | Description |
  |----------|-------------|
  | [`TextResultCallback`](interface-textresultcallback.md) | The interface to handle callback when text results are returned. |
  | [`IntermediateResultCallback`](interface-intermediateresultcallback.md) | The interface to handle callback when intermediate results are returned. |
  | [`ErrorCallback`](interface-errorcallback.md) | The interface to handle callback when an error is returned. |
  | [`DBRServerLicenseVerificationListener`](interface-dbrserverlicenseverificationlistener.md) | The interface to handle callback when license verification messages are returned. |
  | [`DBRDLSLicenseVerificationListener`](interface-dbrdlslicenseverificationlistener.md) | The interface to handle callback when license verification messages are returned. |

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
