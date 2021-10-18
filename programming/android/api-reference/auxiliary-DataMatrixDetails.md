---
layout: default-layout
title: Dynamsoft Barcode Reader Android API Reference - DataMatrixDetails Class
description: This page shows the DataMatrixDetails Class of Dynamsoft Barcode Reader for Android SDK.
keywords: DataMatrixDetails, class, api reference, android
needAutoGenerateSidebar: true
needGenerateH3Content: true
noTitleIndex: true
---

# DataMatrixDetails

`DataMatrixDetails` is one of the [`detailedResult`](auxiliary-TextResult.md#detailedresult) in class `TextResult`. It stores the DataMatrix code details.

```java
class com.dynamsoft.dbr.DataMatrixDetails;
```

| Attribute | Type | Descriptions |
|---------- | ---- |------|
| [`moduleSize`](#modulesize) | *int* | The barcode module size (the minimum bar width in pixel). |
| [`rows`](#rows) | *int* | The row count of the barcode. |
| [`columns`](#columns) | *int* | The column count of the barcode. |
| [`dataRegionRows`](#dataregionrows) | *int* | The data region row count of the barcode. |
| [`dataRegionColumns`](#dataregioncolumns) | *int* | The data region column count of the barcode. |
| [`dataRegionNumber`](#dataregionnumber) | *int* | The data region count. |

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

## dataRegionRows

The data region row count of the barcode.

```java
int dataRegionRows
```

## dataRegionColumns

The data region column count of the barcode.

```java
int dataRegionColumns
```

## dataRegionNumber

The data region count.

```java
int dataRegionNumber
```
