---
layout: default-layout
title: Dynamsoft Barcode Reader Android API Reference - BarcodeReader Status Retrieval Methods
description: This page shows BarcodeReader status retrieval methods of Dynamsoft Barcode Reader for Android SDK.
keywords: getVersion, status retrieval methods, BarcodeReader, api reference, android
needAutoGenerateSidebar: true
noTitleIndex: true
---

# Status Retrieval Methods

  | Method               | Description |
  |----------------------|-------------|
  | [`getVersion`](#getversion) | Get version information of SDK.|

  ---

## getVersion

Get version information of SDK.

```java
String getVersion()
```

**Return Value**

The version information string.

**Code Snippet**

```java
BarcodeReader reader = new BarcodeReader();
String versionInfo = reader.getVersion();
reader.destroy();
```
