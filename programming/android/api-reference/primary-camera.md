---
layout: default-layout
title: Dynamsoft Barcode Reader Android API Reference - Camera Methods
description: This page shows Camera methods of Dynamsoft Barcode Reader for Android SDK.
keywords: Camera methods, BarcodeReader, api reference, android
needAutoGenerateSidebar: true
noTitleIndex: true
pageStartVer: 8.6
---


# Camera Methods

| Method | Description |
|--------|-------------|
| [`StartCameraEnhancer`](#startcameraenhancer) | Start using Dynamsoft Camera Enhancer |
| [`StopCameraEnhancer`](#stopcameraenhancer) | Stop using Dynamsoft Camera Enhancer |
| [`PauseCameraEnhancer`](#pausecameraenhancer) | Pause the process of Dynamsoft Camera Enhancer |
| [`ResumeCameraEnhancer`](#resumecameraenhancer) | Pause the process of Dynamsoft Camera Enhancer |
| [`SetCameraEnhancerParam`](#setcameraenhancerparam) | Set the parameters for Dynamsoft Camera Enhancer in Barcode reader |

This page illustrates the controlling of `Dynamsoft Camera Enhancer`. To get a better understanding of this section, please read more about [`Dynamsoft Camera Enhancer`](https://www.dynamsoft.com/camera-enhancer/docs/introduction/?ver=latest).

## StartCameraEnhancer

The API that controlling the start of `Dynamsoft Camera Enhancer`.

```java
void StartCameraEnhancer()
```

**Code Snippet**

```java
reader.StartCameraEnhancer();
```

## StopCameraEnhancer

The API that controlling the start of `Dynamsoft Camera Enhancer`.

```java
void StopCameraEnhancer()
```

**Code Snippet**

```java
reader.StopCameraEnhancer();
```

## PauseCameraEnhancer

The API that controlling the pause of `Dynamsoft Camera Enhancer`.

```java
void com.dynamsoft.dbr.BarcodeReader.PauseCameraEnhancer()
```

**Code Snippet**

```java
reader.PauseCameraEnhancer();
```

## ResumeCameraEnhancer

The API that controlling the resume of `Dynamsoft Camera Enhancer`.

```java
void ResumeCameraEnhancer()
```

**Code Snippet**

```java
reader.ResumeCameraEnhancer();
```

## SetCameraEnhancerParam

Set the CameraEnhancer parameters.

```java
void SetCameraEnhancerParam(DCESettingParameters _param)
```

**Parameters**

`cameraInstance`: The instance of Dynamsoft Camera Enhancer.  
[`textResultCallback`](interface.md#textresultcallback): The text result callback.  
[`intermediateResultCallback`](interface.md#intermediateresultcallback): The intermediate result callback.

**Code Snippet**

```java
DCESettingParameters dceSettingParameters = new DCESettingParameters();
dceSettingParameters.cameraInstance = mCameraEnhancer;
dceSettingParameters.textResultCallback = mTextResultCallback;
dceSettingParameters.intermediateResultCallback = mIntermediateResultCallback;
reader.SetCameraEnhancerParam(dceSettingParameters);
```

**See Also**

[`DCESettingParameters`](auxiliary-DCESettingParameters.md): The parameters that will be used in `SetCameraEnhancerParam`.
