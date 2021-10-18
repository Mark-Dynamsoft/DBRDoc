---
layout: default-layout
title: Dynamsoft Barcode Reader Android API Reference - AztecDetails Class
description: This page shows the AztecDetails Class of Dynamsoft Barcode Reader for Android SDK.
keywords: AztecDetails, class, api reference, android
needAutoGenerateSidebar: true
needGenerateH3Content: true
noTitleIndex: true
---


# AztecDetails

`AztecDetails` is one of the [`detailedResult`](auxiliary-TextResult.md#detailedresult) in class `TextResult`. It stores the Aztec code details.

```java
class com.dynamsoft.dbr.AztecDetails;
```

| Attribute | Type | Descriptions |
|---------- | -----|------ |
| [`moduleSize`](#modulesize) | *int* | The barcode module size (the minimum bar width in pixel). |
| [`rows`](#rows) | *int* | The row count of the barcode. |
| [`columns`](#columns) | *int* | The column count of the barcode. |
| [`layerNumber`](#layernumber) | *int* | A negative number (-1, -2, -3, -4) specifies a compact Aztec code. A positive number (1, 2, .. 32) specifies a normal (full-rang) Aztec code. |

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

## layerNumber

A negative number (-1, -2, -3, -4) specifies a compact Aztec code. A positive number (1, 2, .. 32) specifies a normal (full-rang) Aztec code.  

```java
int layerNumber
```
