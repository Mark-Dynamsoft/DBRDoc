---
layout: default-layout
title: Dynamsoft Barcode Reader Android API Reference - BarcodeReader Methods
description: This page shows BarcodeReader methods of Dynamsoft Barcode Reader for Android SDK.
keywords: methods, BarcodeReader, api reference, android
needAutoGenerateSidebar: true
noTitleIndex: true
breadcrumbText: BarcodeReader Class
---

# BarcodeReader Class

## Initialize and Destroy

  | Method               | Description |
  |----------------------|-------------|
  | [`BarcodeReader`](primary-initialize-and-destroy.md#barcodereader) | Initialization of `BarcodeReader` object.|
  | [`destroy`](primary-initialize-and-destroy.md#destroy) | Destroys an instance of `BarcodeReader` object.|

## Decode

  | Method               | Description |
  |----------------------|-------------|
  | [`decodeFile`](primary-decode.md#decodefile) | Decode barcodes from a specified image file. |
  | [`decodeFileInMemory`](primary-decode.md#decodefileinmemory) | Decode barcodes from an image file in memory. |
  | [`decodeBuffer`](primary-decode.md#decodebuffer) | Decode barcodes from raw buffer. |
  | [`decodeBase64String`](primary-decode.md#decodebase64string) | Decode barcodes from a base64 encoded string. |
  | [`decodeBufferedImage`](primary-decode.md#decodeBufferedImage) | Decodes barcode from a buffered image (bitmap). |
  | [`initIntermediateResult`](primary-decode.md#initintermediateresult) | Inits an intermediateResult struct with default values. |
  | [`decodeIntermediateResults`](primary-decode.md#decodeintermediateresults) | Decodes barcode from intermediate results. |

## Camera Enhancer
  
   | Method               | Description |
   |----------------------|-------------|
   | [`StartCameraEnhancer`](primary-camera.md#start-stop-pause-resume-camera-enhancer) | Start using Dynamsoft Camera Enhancer |
   | [`StopCameraEnhancer`](primary-camera.md#start-stop-pause-resume-camera-enhancer) | Stop using Dynamsoft Camera Enhancer |
   | [`PauseCameraEnhancer`](primary-camera.md#start-stop-pause-resume-camera-enhancer) | Pause the process of Dynamsoft Camera Enhancer |
   | [`ResumeCameraEnhancer`](primary-camera.md#start-stop-pause-resume-camera-enhancer) | Pause the process of Dynamsoft Camera Enhancer |
   | [`SetCameraEnhancerParam`](primary-camera.md#setcameraenhancerparam) | Set the parameters for Dynamsoft Camera Enhancer in Barcode reader |

## License

  | Method               | Description |
  |----------------------|-------------|
  | [`initLicense`](primary-license.md#initlicense) | Read product key and activate the SDK. |
  | [`initLicenseFromServer`](primary-license.md#initlicensefromserver) | Initialize license and connect to the specified server for online verification. |
  | [`initLicenseFromLicenseContent`](primary-license.md#initlicensefromlicensecontent) | Initialize license from the license content on client machine for offline verification. |
  | [`outputLicenseToString`](primary-license.md#outputlicensetostring) | Output the license content to a string from the license server. |
  | [`initLicenseFromLTS`](primary-license.md#initlicensefromlts) | Initializes the barcode reader license and connects to the specified server for online verification. |

## Parameter and Runtime Settings

### Basic

  | Method               | Description |
  |----------------------|-------------|
  | [`setModeArgument`](primary-parameter-and-runtime-settings-basic.md#setmodeargument) | Set argument value for the specified mode parameter. |
  | [`getModeArgument`](primary-parameter-and-runtime-settings-basic.md#getmodeargument) | Get argument value for the specified mode parameter. |
  | [`getRuntimeSettings`](primary-parameter-and-runtime-settings-basic.md#getruntimesettings) | Get current runtime settings. |
  | [`updateRuntimeSettings`](primary-parameter-and-runtime-settings-basic.md#updateruntimesettings) | Modify and update the current runtime settings. |
  | [`resetRuntimeSettings`](primary-parameter-and-runtime-settings-basic.md#resetruntimesettings) | Reset runtime settings to default. |

### Advanced
  
  | Method               | Description |
  |----------------------|-------------|
  | [`initRuntimeSettingsWithFile`](primary-parameter-and-runtime-settings-advanced.md#initruntimesettingswithfile)  | Initialize runtime settings with the settings in a given JSON file. |
  | [`initRuntimeSettingsWithString`](primary-parameter-and-runtime-settings-advanced.md#initruntimesettingswithstring) | Initialize runtime settings with the settings in a given JSON string. |
  | [`appendTplFileToRuntimeSettings`](primary-parameter-and-runtime-settings-advanced.md#appendtplfiletoruntimesettings) | Append a new template file to the current runtime settings. |
  | [`appendTplStringToRuntimeSettings`](primary-parameter-and-runtime-settings-advanced.md#appendtplstringtoruntimesettings) | Append a new template string to the current runtime settings. |
  | [`getAllParameterTemplateNames`](primary-parameter-and-runtime-settings-advanced.md#getallparametertemplatenames) | Gets the parameter templates name array. |
  | [`outputSettingsToFile`](primary-parameter-and-runtime-settings-advanced.md#outputsettingstofile) | Output runtime settings to a settings file (JSON file). |
  | [`outputSettingsToString`](primary-parameter-and-runtime-settings-advanced.md#outputsettingstostring) | Output runtime settings to a string. |

## Result

  | Method               | Description |
  |----------------------|-------------|
  | [`getIntermediateResults`](primary-result.md#getintermediateresults) | Get intermediate results. |

## Status Retrieval

  | Method               | Description |
  |----------------------|-------------|
  | [`getVersion`](primary-status-retrieval.md#getversion) | Get version information of SDK.|

## Video

### Decode

   | Method               | Description |
   |----------------------|-------------|
   | [`startFrameDecoding`](primary-video.md#startframedecoding) | Decode barcodes from inner frame queue. |
   | [`startFrameDecodingEx`](primary-video.md#startframedecodingex) | Decode barcodes from inner frame queue. |
   | [`appendFrame`](primary-video.md#appendframe) | Append a frame image buffer to the inner frame queue. |
   | [`stopFrameDecoding`](primary-video.md#stopframedecoding) | Stop thread used for frame decoding. |

### Parameter

   | Method               | Description |
   |----------------------|-------------|
   | [`initFrameDecodingParameters`](primary-video.md#initframedecodingparameters) | Initialize frame decoding parameter. |

### Callback

   | Method               | Description |
   |----------------------|-------------|
   | [`setErrorCallback`](primary-video.md#seterrorcallback) | Set callback interface to process errors generated during frame decoding. |
   | [`setTextResultCallback`](primary-video.md#settextresultcallback) | Set callback interface to process text results generated during frame decoding. |
   | [`setIntermediateResultCallback`](primary-video.md#setintermediateresultcallback) | Set callback interface to process intermediate results generated during frame decoding. |

### Status retrieval

   | Method               | Description |
   |----------------------|-------------|
   | [`getLengthOfFrameQueue`](primary-video.md#getlengthofframequeue) | Get length of current inner frame queue. |
