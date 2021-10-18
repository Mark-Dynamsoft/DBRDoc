---
layout: default-layout
title: Dynamsoft Barcode Reader Objective-C & Swift API Reference - Methods
description: This page shows all methods of Dynamsoft Barcode Reader for iOS SDK.
keywords: methods, api reference, objective-c, oc, swift
needAutoGenerateSidebar: true
breadcrumbText: Methods
noTitleIndex: true
---

# BarcodeReader Class

## Initialize
  
  | Method               | Description |
  |----------------------|-------------|
  | [`init`](primary-initialize.md#init) | Create an instance of Dynamsoft Barcode Reader. |
  | [`dispose`](primary-initialize.md#dispose) | Destroy the instance of Dynamsoft Barcode Reader. |

## Decode

  | Method               | Description |
  |----------------------|-------------|
  | [`decodeFileWithName`](primary-decode.md#decodefilewithname) | Decode barcodes from a specified image file. |
  | [`decodeImage`](primary-decode.md#decodeimage) | Decode barcodes from an image file in memory. |
  | [`decodeBuffer`](primary-decode.md#decodebuffer) | Decode barcodes from raw buffer. |
  | [`decodeBase64`](primary-decode.md#decodebase64) | Decode barcodes from a base64 encoded string. |

### Camera Enhancer
  
   | Method               | Description |
   |----------------------|-------------|
   | [`SetCameraEnhancerParam`](primary-camera.md#setcameraenhancerparam) | Set the parameters for Dynamsoft Camera Enhancer in Barcode reader |

## License

  | Method               | Description |
  |----------------------|-------------|
  | [`initWithLicense`](primary-license.md#initwithlicense) | Read product key and activate the SDK. |
  | [`initWithLicenseFromServer`](primary-license.md#initwithlicensefromserver) | Initialize license and connect to the specified server for online verification. |
  | [`outputLicenseToString`](primary-license.md#outputlicensetostring) | Output the license content to a string from the license server. |

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
  | [`initRuntimeSettingsWithFile`](primary-parameter-and-runtime-settings-advanced.md#initruntimesettingswithfile) | Initialize runtime settings with the settings in a given JSON file. |
  | [`initRuntimeSettingsWithString`](primary-parameter-and-runtime-settings-advanced.md#initruntimesettingswithstring) | Initialize runtime settings with the settings in a given JSON string. |
  | [`appendTplFileToRuntimeSettings`](primary-parameter-and-runtime-settings-advanced.md#appendtplfiletoruntimesettings) | Append a new template file to the current runtime settings. |
  | [`appendTplStringToRuntimeSettings`](primary-parameter-and-runtime-settings-advanced.md#appendtplstringtoruntimesettings) | Append a new template string to the current runtime settings. |
  | [`allParameterTemplateNames`](primary-parameter-and-runtime-settings-advanced.md#allparametertemplatenames) | Get the count of the parameter templates. |
  | [`outputSettingsToFile`](primary-parameter-and-runtime-settings-advanced.md#outputsettingstofile) | Output runtime settings to a settings file (JSON file). |
  | [`outputSettingsToString`](primary-parameter-and-runtime-settings-advanced.md#outputsettingstostring) | Output runtime settings to a string. |

## Result

  | Method               | Description |
  |----------------------|-------------|
  | [`getIntermediateResult`](primary-result.md#getintermediateresult) | Get intermediate results. |

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
  | [`getFrameDecodingParameters`](primary-video.md#getframedecodingparameters) | Initialize frame decoding parameter. |

### Status retrieval

  | Method               | Description |
  |----------------------|-------------|
  | [`getLengthOfFrameQueue`](primary-video.md#getlengthofframequeue) | Get length of current inner frame queue. |
