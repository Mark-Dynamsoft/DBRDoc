---
layout: default-layout
title: Dynamsoft Barcode Reader Android API Reference - Interface IntermediateResultCallback
description: This the interface IntermediateResultCallback page of Dynamsoft Barcode Reader for Android SDK.
keywords: IntermediateResultCallback, interface, android
needAutoGenerateSidebar: true
needGenerateH3Content: false
noTitleIndex: true
---

# IntermediateResultCallback

`IntermediateResultCallback` is the interface to handle callback when intermediate results are returned.

```java
interface com.dynamsoft.dbr.IntermediateResultCallback
```

| Method | Description |
| ------ | ----------- |
| `intermediateResultCallback` | Represents the method to handle the intermediate result array returned by the library. |

## intermediateResultCallback

The abstract class for users to get text result from the callback.

```java
void intermediateResultCallback(int var1, TextResult[] var2, Object var3);
```

**Parameters**

`frameId`: The ID of the frame.  
`results`: The intermediate result of the frame.  
`userData`: Arguments passed to your function.

**Code Snippet**

```java
IntermediateResultCallback intermediateResultCallback = new IntermediateResultCallback() {
    @Override
    public void intermediateResultCallback(int frameID, IntermediateResult[] intermediateResult, Object userDate) {
        // Add your code
    }
};
```
