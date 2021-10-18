---
layout: default-layout
title: Dynamsoft Barcode Reader Android API Reference - BarcodeReader initialization and Destroy
description: This page shows BarcodeReader initialization and Destroy methods of Dynamsoft Barcode Reader for Android SDK.
keywords: destroy, BarcodeReader, initialization and destroy, api reference, android
needAutoGenerateSidebar: true
noTitleIndex: true
---

# Initialization and Destroy Methods

  | Method               | Description |
  |----------------------|-------------|
  | [`BarcodeReader`](#barcodereader-initialization) | Initialization of `BarcodeReader` object.|
  | [`destroy`](#destroy) | Destroys an instance of `BarcodeReader` object.|

---

## BarcodeReader Initialization

Initialization of `BarcodeReader` object without a license.

```java
BarcodeReader() throws BarcodeReaderException
```

Initialization of `BarcodeReader` with a license.

```java
BarcodeReader(String license) throws Exception
```

**Exceptions**

[`BarcodeReaderException`](auxiliary-BarcodeReaderException.md)

**Code Snippet**

```java
BarcodeReader reader = new BarcodeReader();
```

```java
BarcodeReader reader = new BarcodeReader("t0260NwAAAHV***************");
```

**Remarks**

If you initialize DynamsoftBarcodeReader without a license, the decoding results may be unreliable.

## Destroy

Destroy the `BarcodeReader` object.

```java
void destroy()
```

**Code Snippet**

```java
BarcodeReader reader = new BarcodeReader("t0260NwAAAHV***************");
reader.destroy();
```
