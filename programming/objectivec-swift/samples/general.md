---
layout: default-layout
title: Dynamsoft Barcode Reader for Android - General Sample
description: This is the General Sample page of Dynamsoft Barcode Reader for Android SDK.
keywords: android, samples, General
needAutoGenerateSidebar: false
breadcrumbText: General
---

# Android General Sample

The general setting sample is shows how to use the `PublicRuntimeSetting` class to make the general settings when using Dynamsoft Barcode Reader.

[Download the samples](#a)

## Updated Runtime Settings

The `PublicRuntimeSettings` class is the class that stores nearly all the barcode reading setting parameters. These parameters cover the basic barcode format settings as well as further algorithm configuring parameters.

**Update the settings via the APIs**

```java
PublicRuntimeSettings runtimeSettings = reader.getRuntimeSettings();
settings.barcodeFormatIds = EnumBarcodeFormat.BF_ONED;
settings.expectedBarcodesCount = 1;
```

**Update the runtime settings via Json String**

```java
reader.initRuntimeSettingsWithString("{\"Version\":\"3.0\", \"ImageParameter\":{\"Name\":\"IP1\", \"BarcodeFormatIds\":[\"BF_QR_CODE\"], \"ExpectedBarcodesCount\":10}}", EnumConflictMode.CM_OVERWRITE);
```

**Update the runtime settings via Json File**

```java
// Overwrite the settings if the settings already exist.
reader.initRuntimeSettingsWithFile("your template file path", EnumConflictMode.CM_OVERWRITE);
```

## Scan Region

The scan region information is stored in `RegionDefinition` class. To set the scan region, you can make the region settings in class `RegionDefinition` and upload the settings through the class `PublicRuntimeSettings`.

```java
PublicRuntimeSettings runtimeSettings = reader.getRuntimeSettings();
RegionDefinition regionDefinition = new RegionDefinition();
//The int value 15 means the top of the scan region margins 15% from the top of screen.
regionDefinition.regionTop = 15;
regionDefinition.regionBottom = 85;
regionDefinition.regionLeft = 30;
regionDefinition.regionRight = 70;
regionDefinition.regionMeasuredByPercentage = 1;
runtimeSettings.region = regionDefinition;
reader.updateRuntimeSettings(runtimeSettings);
```

<div align="center">
    <p><img src="overview/assets/Fast-mode.png" width="70%" alt="Fast-mode"></p>
    <p>How fast mode is cropping frames</p>
</div>
