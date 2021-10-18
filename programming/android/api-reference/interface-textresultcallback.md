---
layout: default-layout
title: Dynamsoft Barcode Reader Android API Reference - Interface TextResultCallback
description: This the interface TextResultCallback page of Dynamsoft Barcode Reader for Android SDK.
keywords: TextResultCallback, interface, android
needAutoGenerateSidebar: true
needGenerateH3Content: false
noTitleIndex: true
---

# TextResultCallback

`TextResultCallback` is The interface to handle callback when the text results are returned.

```java
interface com.dynamsoft.dbr.TextResultCallback
```

| Method | Description |
| ------ | ----------- |
| `textResultCallback` | Represents the method to handle the text result array returned by the library. |

## textResultCallback

The abstract class for users to get text result from the callback.

```java
void textResultCallback(int var1, TextResult[] var2, Object var3);
```

**Parameters**

`frameId`: The ID of the frame.  
`results`: Recognized barcode results of the frame.  
`userData`: Arguments passed to your function.

**Code Snippet**

```java
TextResultCallback textResultCallback = new TextResultCallback() {
    @Override
    public void textResultCallback(int frameID, TextResult[] textResults, Object userdate) {
        // Add your code
    }
};
```
