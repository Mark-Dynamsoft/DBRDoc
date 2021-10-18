---
layout: default-layout
title: Dynamsoft Barcode Reader Objective-C & Swift API Reference - iOneDCodeDetails Class
description: This page shows the iOneDCodeDetails Class of Dynamsoft Barcode Reader for iOS SDK.
keywords: iOneDCodeDetails, class, api reference, objective-c, oc, swift
needAutoGenerateSidebar: true
noTitleIndex: true
---

# Class iOneDCodeDetails

`iOneDCodeDetails` is one of the [`detailedResult`](auxiliary-iTextResult.md#detailedresult) in class `iTextResult`. It stores the OneD code details.

```objc
@interface iOneDCodeDetails
```  

| Attribute | Type | Descriptions |
|---------- |-----| ---- |
| [`moduleSize`](#modulesize) | *NSInteger* | The barcode module size (the minimum bar width in pixel). |
| [`startCharsBytes`](#startcharsbytes) | *NSData \** | The start chars in a byte array. |
| [`startCharsBytesLength`](#startcharsbyteslength) | *NSInteger* | The length of the start chars byte array. |
| [`stopCharsBytes`](#stopcharsbytes) | *NSData \** | The stop chars in a byte array. |
| [`stopCharsBytesLength`](#stopcharsbyteslength) | *NSInteger* | The length of the stop chars byte array. |
| [`checkDigitBytes`](#checkdigitbytes) | *NSData \** | The check digit chars in a byte array. |
| [`checkDigitBytesLength`](#checkdigitbyteslength) | *NSInteger* | The length of the check digit chars byte array. |

## moduleSize

The barcode module size (the minimum bar width in pixel).

```objc
NSInteger moduleSize
```

## startCharsBytes

The start chars in a byte array.

```objc
NSData* startCharsBytes
```

## startCharsBytesLength

The length of the start chars byte array.

```objc
NSInteger startCharsBytesLength
```

## stopCharsBytes

The stop chars in a byte array.

```objc
NSData* stopCharsBytes
```

## stopCharsBytesLength

The length of the stop chars byte array.

```objc
NSInteger stopCharsBytesLength
```

## checkDigitBytes

The check digit chars in a byte array.

```objc
NSData* checkDigitBytes
```

## checkDigitBytesLength

The length of the check digit chars byte array.

```objc
NSInteger checkDigitBytesLength
```
