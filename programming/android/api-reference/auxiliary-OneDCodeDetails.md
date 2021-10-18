---
layout: default-layout
title: Dynamsoft Barcode Reader Android API Reference - OneDCodeDetails Class
description: This page shows the OneDCodeDetails Class of Dynamsoft Barcode Reader for Android SDK.
keywords: OneDCodeDetails, class, api reference, android
needAutoGenerateSidebar: true
needGenerateH3Content: true
noTitleIndex: true
---

# OneDCodeDetails

`OneDCodeDetails` is one of the [`detailedResult`](auxiliary-TextResult.md#detailedresult) in class `TextResult`. It stores the OneD code details.

```java
class com.dynamsoft.dbr.OneDCodeDetails;
```

| Attribute | Type | Descriptions |
|---------- |----- | -------------|
| `moduleSize` | *int* | The barcode module size (the minimum bar width in pixel). |
| `startCharsBytes` | *int* | The start chars in a byte array. |
| `stopCharsBytes` | *int* | The stop chars in a byte array. |
| `checkDigitBytes` | *int* | The check digit chars in a byte array. |
| `startPatternRange` | *int* | The start pattern range of the OneDcode. |
| `middlePatternRange` | *int* | The middle pattern range of the OneDcode. |
| `endPatternRange` | *int* | The end pattern range of the OneDcode. |

## moduleSize

The barcode module size (the minimum bar width in pixel).

```java
int moduleSize
```

## startCharsBytes

The start chars in a byte array.

```java
byte[] startCharsBytes
```

## stopCharsBytes

The stop chars in a byte array.

```java
byte[] stopCharsBytes
```

## checkDigitBytes

The check digit chars in a byte array.

```java
byte[] checkDigitBytes
```

## startPatternRange

The start pattern range of the OneDcode.

```java
byte[] startPatternRange
```

## middlePatternRange

The middle pattern range of the OneDcode.

```java
byte[] middlePatternRange
```

## endPatternRange

The end pattern range of the OneDcode.

```java
byte[] endPatternRange
```
