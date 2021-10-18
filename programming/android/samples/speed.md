---
layout: default-layout
title: Dynamsoft Barcode Reader for Android - Speed-first Settings Sample
description: This is the Speed-first Settings Sample page of Dynamsoft Barcode Reader for Android SDK.
keywords: android, sample, speed
needAutoGenerateSidebar: false
breadcrumbText: Speed-First Settings
---

# Speed-first Settings

The Speed-first Settings sample illustrates how to improve the speed performance of the barcode decoding apps. Generally, users can improve the barcode decoding speed by reducing the size of the scan region or simplifying the complexity of the barcode settings. Furthermore, for certain scenarios, configuring parameter settings also contributes to the barcode reading speed. On this page, you will be guided on how to make personalized speed-friendly parameter settings for your barcode decoding app.

View the sample

- [Speed-first Settings Sample]()

## Size of the Scan Region

Reducing the scan region size is the most effective way to speed up the barcode reading. To reduce the scan region size, you can restrict the border of the scan region via `PublicRuntimeSettings` and `RegionDefinition` classes. Displaying the scan region on the UI can also guide the users to manually approach the barcode area.

<div align="center">
    <p><img src="assets/region-definition.png" width="70%" alt="region-def"></p>
    <p>Reduce the Size of Scan Area</p>
</div>

## Simplify the Barcode Setting

**The barcode count**

Normally, the barcode reader will try different parameter combinations to find as many barcodes as the expected number. If the expected barcode count is far more than the actual value, the barcode decoding speed will be decreased. As a result, to maximum the barcode decoding speed, please make sure to set the expected barcode count to an appropriate value.

**The barcode format**

The barcode reader will switch between the preset barcode formats until it finds as many barcodes as the expected value. Supporting more barcode formats will benefit the coverage of your app but at the same time be negative on the reading speed. Please confirm that you have set the supporting barcode formats exactly the same as your expected usage scenario. So that you can enable your app to reach the balance between speed and coverage.

## Parameter Control

Dynamsoft Barcode Reader provides APIs that enable users to make advanced mode & parameter settings. These modes and parameters can benefit the read rate of the barcode reader in different scenarios or maximum the speed and accuracy of a certain scenario.

**LocalizationModes**

The LocalizationModes members are designed for different specified scenarios. In the aspect of barcode reading speed, `ONED_FAST_SCAN` is specially designed for accelerating 1D barcode localization. In addition, `SCAN_DIRECTLY` turns out to performs well when deployed together with `RegionDefinition`. Please read more about the localization modes on the page of parameter `LocalizationModes`.

**BinarizationModes**

If the binarization mode is not skipped, the barcode reader will spend some time on filling the binary vacancy. You can set the `EnableFillBinaryVacancy` value to 0 to disable this activity. Please be sure that your app is working with high-quality images if you want to skip filling the vacancy.

**GrayscaleTransformationModes**

Normally, the barcodes are always colored black and the background colors are always white. `GTM_INVERTED` is enabled to recognize the unusual colored barcodes. If this is not necessary for your usage scenarios, you can remove the `GTM_INVERTED` from your parameter list to reduce the time consumption.

## Templates

**For 1D Single Barcode Scanning**

```java
regionDefinition.regionTop = 15;
regionDefinition.regionBottom = 85;
regionDefinition.regionLeft = 30;
regionDefinition.regionRight = 70;
runtimeSettings.region = regionDefinition;
runtimeSettings.barcodeFormatIds = EnumBarcodeFormat.BF_ONED;
runtimeSettings.expectedBarcodesCount = 1;
runtimeSettings.localizationModes = new int[]{EnumLocalizationMode.LM_SCAN_DIRECTLY,0,0,0,0,0,0,0};
runtimeSettings.deblurModes = new int[]{EnumDeblurMode.DM_SKIP,0,0,0,0,0,0,0,0,0};
runtimeSettings.furtherModes.grayscaleTransformationModes = new int[]{EnumGrayscaleTransformationMode.GTM_ORIGINAL,EnumGrayscaleTransformationMode.GTM_INVERTED,0,0,0,0,0,0};
settings.binarizationModes = new int[]{EnumBinarizationMode.BM_LOCAL_BLOCK,0,0,0,0,0,0,0};
reader.setModeArgument("localizationModes",0,"ScanDirection","0");
reader.setModeArgument("BinarizationModes", 0, "EnableFillBinaryVacancy", "0");
```

**For general usage**

Generally, we can sacrifice a bit speed

```java
runtimeSettings.barcodeFormatIds = EnumBarcodeFormat.BF_ONED | EnumBarcodeFormat.BF_PDF417 | EnumBarcodeFormat.BF_QR_CODE | EnumBarcodeFormat.BF_DATAMATRIX |EnumBarcodeFormat.BF_AZTEC;
runtimeSettings.expectedBarcodesCount = 0;
// We can use the default settings of the advanced modes
```
