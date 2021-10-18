---
layout: default-layout
title: Dynamsoft Barcode Reader iOS API Reference - DMDLSLicenseVerificationDelegate
description: This page shows DMDLSLicenseVerificationDelegate protocol of Dynamsoft Barcode Reader for iOS SDK.
keywords: DMDLSLicenseVerificationDelegate, api reference, iOS
needAutoGenerateSidebar: true
needGenerateH3Content: false
noTitleIndex: true
pageStartVer: 8.4
---

# DMDLSLicenseVerificationDelegate

The callback of the license server.

```objc
@protocol DMDLSLicenseVerificationDelegate <NSObject>
```

| Method | Type | Description |
| ------ | ---- | ----------- |
| `DLSLicenseVerificationCallback` | *required* | The method for users to add code for license verification. |

## DLSLicenseVerificationCallback

The method for users to add code for license verification.

```objc
@required
- (void)DLSLicenseVerificationCallback:(bool)isSuccess error:(NSError * _Nullable)error;
```

**Parameters**

`[in, out] isSuccess`: Whether the license verification was successful.  
`[in, out] error`: The error message from the license server.

**Remarks**

`DMLTSLicenseVerificationDelegate` is deprecated, please use `DMDLSLicenseVerificationDelegate`.
