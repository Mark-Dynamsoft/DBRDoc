---
layout: default-layout
title: Dynamsoft Barcode Reader for Android - Helloworld Sample
description: This is the Helloworld Sample page of Dynamsoft Barcode Reader for Android SDK.
keywords: android, samples, Helloworld
needAutoGenerateSidebar: false
breadcrumbText: Helloworld
---

# Android Helloworld Sample

The Android Helloworld sample illustrates how to create the simplest video barcode scanner with Dynamsoft Barcode Reader (DBR) Android SDK.

[Download the Helloworld sample]().

## The License

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

## The Camera

Dynamsoft Camera Enhancer is an SDK for users to easily develop a camera module for getting video input. In this Helloworld sample, we are using DCE developed camera module.

## The Result

The [`TextResult`]({{ site.android_api }}auxiliary-TextResult.html) class stores the barcode result data including the barcode text result, detailed result, extended barcode result and other barcode information.
