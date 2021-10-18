---
layout: default-layout
title: Dynamsoft Barcode Reader Android API Reference - Common Classes
description: This page shows the Common Classes of Dynamsoft Barcode Reader for Android SDK.
keywords: Common Classes, API reference, android
needAutoGenerateSidebar: true
needGenerateH3Content: false
noTitleIndex: true
---

# Common Classes

## [Point](auxiliary-Point.md)

The point class Stores the x and y coordinate of the points.

```java
class com.dynamsoft.dbr.Point;
```

| Attribute | Type | Descriptions |
|---------- | ---- | ------------ |
| [`x`](auxiliary-Point.md#x) | *int* | The X coordinate of the point. |
| [`y`](auxiliary-Point.md#y) | *int* | The y coordinate of the point. |

## [Quadrilateral](auxiliary-Quadrilateral.md)

This class stores the quadrilateral points data.

```java
class com.dynamsoft.dbr.Quadrilateral;
```

| Attribute | Type | Descriptions |
|---------- | ---- | ------------ |
| [`points`](auxiliary-Quadrilateral.md#points) | [`Point`](auxiliary-Point.md)[] | Four vertexes in a clockwise direction of a quadrilateral. Index 0 represents the left-most vertex. |

## [RegionDefinition](auxiliary-RegionDefinition.md)

This class stores the region data. You can make settings on scan region through this class.

```java
class com.dynamsoft.dbr.RegionDefinition;
```

| Attribute | Type | Descriptions |
|---------- | ---- | ------------ |
| [`regionTop`](auxiliary-RegionDefinition.md#regiontop) | *int* | The top-most coordinate or percentage of the region. |
| [`regionLeft`](auxiliary-RegionDefinition.md#regionleft) | *int* | The left-most coordinate or percentage of the region. |
| [`regionRight`](auxiliary-RegionDefinition.md#regionright) | *int* | The right-most coordinate or percentage of the region. |
| [`regionBottom`](auxiliary-RegionDefinition.md#regionbottom) | *int* | The bottom-most coordinate or percentage of the region. |
| [`regionMeasuredByPercentage`](auxiliary-RegionDefinition.md#regionmeasuredbypercentage) | *int* | Sets whether or not to use percentage to measure the region size. |
