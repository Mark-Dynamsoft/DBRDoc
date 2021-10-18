---
layout: default-layout
title: Dynamsoft Barcode Reader for Android - Demos & Samples
description: This is the Demos & Samples page of Dynamsoft Barcode Reader for Android SDK.
keywords: android, samples
needAutoGenerateSidebar: false
breadcrumbText: Samples
---

# Samples and demos

## Samples

| Sample Name | Description |
| ----------- | ----------- |
| [Helloworld](helloworld.md) | The simplest video streaming barcode scanner. |
| [GeneralSettings](general.md) | Illustrating some typical barcode decoding settings. |
| [SpeedFirstSettings](speed.md) | Solutions on improving the barcode decoding speed. |
| [ReadRateFirstSettings](read-rate.md) | Parameter configuration guide on enlarging the coverage of the barcode reader. |
| [AccuracyFirstSettings](accuracy.md) | Parameter configuration guide on improving the accuracy of barcode results. |
| [ReadADriversLicense](driver-license.md) | A drivers' license reader sample. |

## About Dynamsoft Barcode Reader Android Samples

Before you start viewing the samples, the following concepts may help you understand how DBR is working.

### The License

You have to initialize the Barcode Reader with a valid license to get access to the full feature of DBR.

```java
barcodeReader.initLicense("Your license", new DBRLicenseVerificationListener() {
    @Override
    public void DBRLicenseVerificationCallback(boolean isSuccess, Exception e) {
        if (!isSuccess) {
            e.printStackTrace();
        }
    }
});
```

### The Camera

DCE is an SDK that enables users to easily create a camera module on the mobile platform. In the DBR samples, we are using the DCE-deployed camera module as the video streaming input for video barcode decoding.

### The Result

The [`TextResult`]({{ site.android_api }}auxiliary-TextResult.html) class stores the barcode result data including the barcode text result, detailed result, extended barcode result and other barcode information.
