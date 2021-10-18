---
layout: default-layout
title: Dynamsoft Barcode Reader Android API Reference - DMDLSConnectionParameters Class
description: This page shows the DMDLSConnectionParameters Class of Dynamsoft Barcode Reader for Android SDK.
keywords: DMDLSConnectionParameters, class, api reference, android
needAutoGenerateSidebar: true
needGenerateH3Content: true
noTitleIndex: true
pageStartVer: 8.6
---


# DMDLSConnectionParameters

Defines a struct to configure the parameters to connect to Dynamsoft License Server.  

```java
class com.dynamsoft.dbr.DMLTSConnectionParameters
```

| Attributes | Type | Descriptions |
|----------- | ---- | ----------- |
| [`mainServerURL`](#mainserverurl) | *String* | The URL of the Dynamsoft License Server. |
| [`standbyServerURL`](#standbyserverurl) | *String* | The URL of the standby Dynamsoft License Server. |
| [`handshakeCode`](#handshakecode) | *String* | The handshake code. |
| [`sessionPassword`](#sessionpassword) | *String* | The session password of the handshake code set in Dynamsoft License Server. |
| [`uuidGenerationMethod`](#uuidgenerationmethod) | *int* | Sets the method to generate UUID. |
| [`maxBufferDays`](#maxbufferdays) | *int* | Sets the max days to buffer the license info. |
| [`limitedLicenseModules`](#limitedlicensemodules) | *int[]* | Sets the license modules to use. |
| [`chargeWay`](#chargeway) | *int* | Sets the charge way. |
| [`organizationID`](#organizationid) | *String* | The organization ID got from Dynamsoft. |

## mainServerURL

The URL of the Dynamsoft License Server.

```java
String mainServerURL
```

**Value Range**

Any string value

**Default Value**

null

**Remarks**

If you choose "Dynamsoft-hosting", then no need to change the value of MainServerURL and StandbyServerURL. When both are set to null (default value), it will connect to Dynamsoft License Servers for online verification.

## standbyServerURL

The URL of the standby Dynamsoft License Server.

```java
String standbyServerURL
```

**Value Range**

Any string value

**Default Value**

null

**Remarks**

If you choose "Dynamsoft-hosting", then no need to change the value of MainServerURL and StandbyServerURL. When both are set to null (default value), it will connect to Dynamsoft License Servers for online verification.

## handshakeCode

The handshake code.

```java
String handshakeCode
```

**Value Range**

Any string value

**Default Value**

null

## sessionPassword

The session password of the handshake code set in Dynamsoft License Server.

```java
String sessionPassword
```

**Value Range**

Any string value

**Default Value**

null

## uuidGenerationMethod

Sets the method to generate UUID.

```java
int uuidGenerationMethod
```

**Value Range**

Any one of the [`EnumDMUUIDGenerationMethod`]({{ site.enumerations }}other-enums.html#dm_uuidgenerationmethod) Enumeration items.

**Default Value**

DM_UUIDGM_RANDOM

**See Also**

[`EnumDMUUIDGenerationMethod`]({{ site.enumerations }}other-enums.html#dm_uuidgenerationmethod)

## maxBufferDays

Sets the max days to buffer the license info.

```java
int maxBufferDays
```

**Value Range**

[7,0x7fffffff]  

**Default Value**

7

## limitedLicenseModules

Sets the license modules to use.

```java
List<Integer> limitedLicenseModules
```

**Value Range**

A list of the [`EnumDMLicenseModule`]({{ site.enumerations }}other-enums.html#dm_licensemodule) Enumeration items.

**Default Value**

null

**See Also**

[`EnumDMLicenseModule`]({{ site.enumerations }}other-enums.html#dm_licensemodule)

## chargeWay

Sets the charge way.

```java
int chargeWay
```

**Value Range**

Any one of the [`EnumDMChargeWay`]({{ site.enumerations }}other-enums.html#dm_chargeWay) Enumeration items.

## organizationID

The organization ID got from Dynamsoft.

```java
String organizationID
```

**Value Range**

Any string value

**Default Value**

"200001"
