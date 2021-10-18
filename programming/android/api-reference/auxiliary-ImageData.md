---
layout: default-layout
title: Dynamsoft Barcode Reader Android API Reference - ImageData Class
description: This page shows the ImageData Class of Dynamsoft Barcode Reader for Android SDK.
keywords: ImageData, class, api reference, android
needAutoGenerateSidebar: true
needGenerateH3Content: true
noTitleIndex: true
---


# ImageData

Stores the image data.  

```java
class com.dynamsoft.dbr.ImageData
```

| Attribute | Type | Descriptions |
|---------- | ---- | ------------ |
| [`bytes`](#bytes) | *byte\[\]* | The image data content in a byte array. |
| [`width`](#width) | *int* | The width of the image in pixels. |
| [`height`](#height) | *int* | The height of the image in pixels. |
| [`stride`](#stride) | *int* | The stride (or scan width) of the image. |
| [`format`](#format) | *int* | The image pixel format used in the image byte array. |

## bytes

The image data content in a byte array.

```java
byte[] bytes
```

## width

The width of the image in pixels.

```java
int width
```

## height

The height of the image in pixels.

```java
int height
```

## stride

The stride (or scan width) of the image.

```java
int stride
```

## format

The image pixel format used in the image byte array.

```java
int format
```
