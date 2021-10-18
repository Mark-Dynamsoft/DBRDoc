---
layout: default-layout
title: Dynamsoft Barcode Reader Android API Reference - Interface DBRLTSLicenseVerificationListener
description: This is the interface DBRLTSLicenseVerificationListener page of Dynamsoft Barcode Reader for Android SDK.
keywords: DBRLTSLicenseVerificationListener, interface, android
needAutoGenerateSidebar: true
needGenerateH3Content: false
noTitleIndex: true
pageStartVer: 8.0
---

# DBRLTSLicenseVerificationListener

`DBRLTSLicenseVerificationListener` is the interface to handle callback when license verification messages are returned.

```java
interface com.dynamsoft.dbr.DBRLTSLicenseVerificationListener
```

| Method | Description |
| ------ | ----------- |
| `LTSLicenseVerificationCallback` | The callback of license server. |

## LTSLicenseVerificationCallback

```java
void LTSLicenseVerificationCallback(boolean var1, Exception var2);
```

**Parameters**

`isSuccess`: Whether the license verification was successful.  
`error`: The error message from license server.

**Code Snippet**

```java
DBRLTSLicenseVerificationListener dbrLTSListener = new DBRLTSLicenseVerificationListener() {
    @Override
    public void LTSLicenseVerificationCallback(boolean b, Exception e) {
        // Add your code
    }
};
```
