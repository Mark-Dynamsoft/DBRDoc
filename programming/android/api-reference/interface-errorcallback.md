---
layout: default-layout
title: Dynamsoft Barcode Reader Android API Reference - Interface ErrorCallback
description: This is the interface ErrorCallback page of Dynamsoft Barcode Reader for Android SDK.
keywords: ErrorCallback, interface, android
needAutoGenerateSidebar: true
needGenerateH3Content: false
noTitleIndex: true
---

# ErrorCallback

`ErrorCallback` is the interface to handle callback when an error is returned.

```java
interface com.dynamsoft.dbr.ErrorCallback
```

| Method | Description |
| ------ | ----------- |
| `errorCallback` | Represents the method to handle the error code returned by the library. |

## errorCallback

```java
void errorCallback(int var1, int var2, Object var3);
```

**Parameters**

`frameId`: The ID of the frame.  
`errorCode`: Error Code generated when decoding the frame.  
`userData`: Arguments passed to your function.

**Code Snippet**

```java
ErrorCallback errorCallback = new ErrorCallback() {
    @Override
    public void errorCallback(int frameID, int errorCode, Object userData) {
        //Add your code     
    }
};
```
