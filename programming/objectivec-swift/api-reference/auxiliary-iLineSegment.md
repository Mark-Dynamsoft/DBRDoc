---
layout: default-layout
title: Dynamsoft Barcode Reader Objective-C & Swift API Reference - iLineSegment Class
description: This page shows the iLineSegment Class of Dynamsoft Barcode Reader for iOS SDK.
keywords: iLineSegment, class, api reference, objective-c, oc, swift
needAutoGenerateSidebar: true
noTitleIndex: true
---


# Class iLineSegment

Stores line segment data.

```objc
@interface iLineSegment
```  

| Attribute | Type | Descriptions |
|---------- | ---- | ----------- |
| [`startPoint`](#startpoint) | [`CGPoint`](auxiliary-iDBRPoint.md) | The start point of the line segment. |
| [`endPoint`](#endpoint) | [`CGPoint`](auxiliary-iDBRPoint.md) | The end point of the line segment. |
| [`linesConfidenceCoefficients`](#linesconfidencecoefficients) | *NSData \** | *byte\[\]* | The confidence coefficients for lines. |

## startPoint

The start point of the line segment.

```objc
CGPoint startPoint
```

## endPoint

The end point of the line segment.

```objc
CGPoint endPoint
```

## linesConfidenceCoefficients

The confidence coefficients for lines. There are 4 coefficients in this set:  

1. linesConfidenceCoefficients\[0\] is average positive amplitude;
2. linesConfidenceCoefficients\[1\] is max positive amplitude;
3. linesConfidenceCoefficients\[2\] is average negative amplitude;
4. linesConfidenceCoefficients\[3\] is max negative amplitude.

```objc
NSData* linesConfidenceCoefficients
```
