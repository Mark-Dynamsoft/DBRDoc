---
layout: default-layout
title: Dynamsoft Barcode Reader Android API Reference - PDF417Details Class
description: This page shows the PDF417Details Class of Dynamsoft Barcode Reader for Android SDK.
keywords: PDF417Details, class, api reference, android
needAutoGenerateSidebar: true
needGenerateH3Content: true
noTitleIndex: true
---


# PDF417Details

`PDF417Details` is one of the [`detailedResult`](auxiliary-TextResult.md#detailedresult) in class `TextResult`. It stores the PDF417 code details.

```java
class com.dynamsoft.dbr.PDF417Details;
```

| Attribute | Type | Descriptions |
|---------- |------|------------ |
| `moduleSize` | *int* | The barcode module size (the minimum bar width in pixel). |
| `rows` | *int* | The row count of the barcode. |
| `columns` | *int* | The column count of the barcode. |
| `errorCorrectionLevel` | *int* | The error correction level of the barcode. |

## moduleSize

The barcode module size (the minimum bar width in pixel).

```java
int moduleSize
```

## rows

The row count of the barcode.

```java
int rows
```

## columns

The column count of the barcode.

```java
int columns
```

## errorCorrectionLevel

The error correction level of the barcode.

```java
int errorCorrectionLevel
```
