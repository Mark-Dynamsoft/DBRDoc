---
layout: default-layout
title: Dynamsoft Barcode Reader Objective-C & Swift API Reference - Initialize Methods
description: This page shows Initialize methods of Dynamsoft Barcode Reader for iOS SDK.
keywords: init, initialize methods, api reference, objective-c, oc, swift
needAutoGenerateSidebar: true
noTitleIndex: true
---


# Initialize Methods

  | Method               | Description |
  |----------------------|-------------|
  | [`init`](#init) | Create an instance of Dynamsoft Barcode Reader. |
  
  ---

## init

Initializes DynamsoftBarcodeReader.

```objc
- (instancetype _Nonnull)init;
```

**Return Value**

The instance of DynamsoftBarcodeReader.

**Code Snippet**

Objective-C:

```objc
DynamsoftBarcodeReader *barcodeReader;
BarcodeReader = [[DynamsoftBarcodeReader alloc] init];
```

Swift:

```Swift
let barcodeReader = DynamsoftBarcodeReader.init()
```

**Remarks**

Partial of the decoding result will be masked with "*" without a valid license key.

## dispose

Destroy the instance of Dynamsoft Barcode Reader.

**Code Snippet**

Objective-C:

```objc
[barcodeReader dispose];
```

Swift:

```swift
barcodeReader.dispose()
```
