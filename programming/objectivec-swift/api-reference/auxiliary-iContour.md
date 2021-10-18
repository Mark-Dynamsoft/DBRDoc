---
layout: default-layout
title: Dynamsoft Barcode Reader Objective-C & Swift API Reference - iContour Class
description: This page shows the iContour Class of Dynamsoft Barcode Reader for iOS SDK.
keywords: iContour, class, api reference, objective-c, oc, swift
needAutoGenerateSidebar: true
noTitleIndex: true
---


# Class iContour

The iContour is one of the [`results`](auxiliary-iIntermediateResult.md#results) type in `iIntermediateResult`.

```objc
@interface iContour
```

| Attribute | Type | Description |
|---------- | ---- | ----------- |
| [`pointsCount`](#pointscount) |  *NSInteger* | The total points count of the contour. |
| [`points`](#points) | [`CGPoint`](auxiliary-iDBRPoint.md) | The points array of the points that surround the barcode area.. |

## pointsCount

The total points count of the contour.

```objc
NSInteger pointsCount
```  
  
## points

The points array.

```objc
NSArray* points
```  
