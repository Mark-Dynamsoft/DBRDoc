---
layout: default-layout
title: Dynamsoft Barcode Reader Android API Reference - BarcodeReader License Methods
description: This page shows BarcodeReader license methods of Dynamsoft Barcode Reader for Android SDK.
keywords: initLicense, initLicenseFromServer, initLicenseFromLicenseContent, outputLicenseToString, license methods, BarcodeReader, api reference, android
needAutoGenerateSidebar: true
noTitleIndex: true
pageStartVer: 8.6
---


# License Methods

  | Method               | Description |
  |----------------------|-------------|
  | [`initLicense`](#initlicense) | Read product key and activate the SDK. |
  | [`initLicenseFromServer`](#initlicensefromserver) | Initialize license and connect to the specified server for online verification. |
  | [`initLicenseFromLicenseContent`](#initlicensefromlicensecontent) | Initialize license from the license content on client machine for offline verification. |
  | [`outputLicenseToString`](#outputlicensetostring) | Output the license content to a string from the license server. |
  | [`initLicenseFromDLS`](#initlicensefromdls) | Initializes the barcode reader license and connects to the specified server for online verification. |
  | [`initLicenseFromLTS`](primary-license.md#initlicensefromlts) | `Deprecated`, please use [initLicenseFromDLS](primary-license.md#initlicensefromdls) instead. |

  ---

## initLicense

Read the product key and activate the SDK.

```java
void initLicense(String license) throws BarcodeReaderException
```

**Parameters**

`license`: The product keys.

**Exceptions**

[`BarcodeReaderException`](auxiliary-BarcodeReaderException.md)

**Code Snippet**

```java
BarcodeReader reader = new BarcodeReader();
reader.initLicense("t0260NwAAAHV***************");
reader.destroy();
```

## initLicenseFromServer

Initialize the license and connect to the specified server for online verification.

```java
void initLicenseFromServer(String licenseServer, String licenseKey, DBRServerLicenseVerificationListener dbrServerLicenseVerificationListener)
```

**Parameters**

`licenseServer`: The URL of the license server.  
`licenseKey`: The license key.  
`dbrServerLicenseVerificationListener`: The delegate to handle callback when license server returns.

**Code Snippet**

```java
BarcodeReader reader = new BarcodeReader();
reader.initLicenseFromServer("", "C087****",  new DBRServerLicenseVerificationListener() {
    @Override
    public void licenseVerificationCallback(boolean isSuccess, Exception error) {
    }
});
reader.destroy();
```

## initLicenseFromLicenseContent

Initialize barcode reader license from the license content on the client machine for offline verification.

```java
void initLicenseFromLicenseContent(String licenseKey, String licenseContent) throws BarcodeReaderException
```

**Parameters**

`licenseKey`: The license key.  
`licenseContent`: An encrypted string representing the license content (quota, expiration date, barcode type, etc.) obtained from the method [`OutputLicenseToString`](#outputlicensetostring).

**Exceptions**

[`BarcodeReaderException`](auxiliary-BarcodeReaderException.md)

**Code Snippet**

```java
BarcodeReader reader = new BarcodeReader();
//get String licenseContent from reader.outputLicenseToString();
reader.initLicenseFromLicenseContent("C087****",licenseContent);
reader.destroy();
```

## outputLicenseToString

Output the license content as an encrypted string from the license server to be used for offline license verification.

```java
String outputLicenseToString() throws BarcodeReaderException
```

**Return Value**

The output string which stores the contents of license.

**Exceptions**

[`BarcodeReaderException`](auxiliary-BarcodeReaderException.md)

**Code Snippet**

```java
BarcodeReader reader = new BarcodeReader();
reader.initLicenseFromServer("", "C087****",  new DBRServerLicenseVerificationListener() {
    @Override
    public void licenseVerificationCallback(boolean isSuccess, Exception error) {
    }
});
String licenseContent = reader.outputLicenseToString();
reader.destroy();
```

**Remarks**

[`InitLicenseFromServer`](#initlicensefromserver) has to be successfully called before calling this method.

## initLicenseFromDLS

Initializes the barcode reader license and connects to the specified server for online verification.

```java
void initLicenseFromDLS(DMDLSConnectionParameters dlsInfo, DBRDLSLicenseVerificationListener listener)
```

**Parameters**

`dlsInfo`: The struct DMDLSConnectionParameters with customized settings.  
`listener`: The delegate to handle callback when license server returns.

**Code Snippet**

```java
BarcodeReader reader = new BarcodeReader();
DMDLSConnectionParameters info = new DMDLSConnectionParameters();
info.organizationID = "200001";
info.sessionPassword = "******";
reader.initLicenseFromDLS(info, new DBRDLSLicenseVerificationListener() {
   @Override
   public void DLSLicenseVerificationCallback(boolean b, Exception e) {
      if (!b && e != null) {
         e.printStackTrace();
      }
   }
});
```

## initLicenseFromLTS

`Deprecated`, please use [initLicenseFromDLS](#initlicensefromdls) instead.
