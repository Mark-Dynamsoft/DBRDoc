---
layout: default-layout
title: Dynamsoft Barcode Reader for Android - User Guide v8.4
description: This is the user guide of Dynamsoft Barcode Reader for Android SDK.
keywords: user guide v8.4, android
needAutoGenerateSidebar: true
needGenerateH3Content: true
noTitleIndex: true
---


# User Guide for Android Edition

## Requirements

- Operating systems:
  - Supported OS: Android 5 or higher (Android 7 or higher recommended).
  - Supported ABI: armeabi-v7a, arm64-v8a, x86 and x86_64.

## Installation

There are two options for you to install Dynamsoft Barcode Reader. You can download the package from our website or use maven to load the packages.

**Option 1: Download Installation**

If you have downloaded the SDK from the [Dynamsoft website](https://www.dynamsoft.com/barcode-reader/downloads/){:target="_blank"} and unzipped `dbr-android-{version-number}.zip`, you can find two `aar` files and a sample folder. You can simply include `DynamsoftBarcodeReaderAndroid.aar` to your project to start creating a barcode scanning app. The other aar package, `DynamsoftCameraEnhancerAndroid.aar`, is an expansion package which integrates video frame preprocessing algorithms and camera control APIs. In this guide, we will use the `Camera Enhancer` to create the camera module for receiving video input.

| Package | Description |
|---------|-------------|
| `DynamsoftBarcodeReaderAndroid.aar` | The Barcode Reader package, includes all barcode decoding releated algorithms and APIs. |
| `DynamsoftCameraEnhancerAndroid.aar` | The Camera Enhancer Package, includes camera control APIs and frame preprocessing algorithm.  |

You can add your downloaded packages into your project by the following steps:

1. Create a new Android project in Android Studio.
2. Import the `DynamsoftBarcodeReaderAndroid.aar` and `DynamsoftCameraEnhancerAndroid.aar` files into the new project.
3. In the project, open `build.gradle(Module: app)` and add the following code:

   ```groovy
   repositories {
      flatDir {
         dirs 'libs'
      }
   }
   ```

   Then Add `.aar` reference in the dependencies:

   ```groovy
   implementation(name: 'DynamsoftBarcodeReaderAndroid', ext: 'aar')
   implementation(name: 'DynamsoftCameraEnhancerAndroid', ext: 'aar')
   ```

4. Click `Sync Now`. After the synchronization completes, `DynamsoftBarcodeReaderAndroid.aar` and `DynamsoftCameraEnhancerAndroid.aar` are added to the project.

**Option 2: Install from Gradle**

You can add Dynamsoft Barcode Reader by the following steps:

1. Add download URL in your project's `build.gradle`.

   ```groovy
   allprojects {
      repositories {
         google()
         jcenter()
         maven {
            url "http://download.dynamsoft.com/maven/dbr/aar"
         }
         maven {
            url "http://download.dynamsoft.com/maven/dce/aar"
         }
      }
   }
   ```

2. Implement Dynamsoft Barcode Reader at dependencies in your module's `build.gradle`.

   ```groovy
   implementation 'com.dynamsoft:dynamsoftbarcodereader:{version number}@aar'
   implementation 'com.dynamsoft:dynamsoftcameraenhancer:{version number}@aar'
   ```

   Please replace `{version-number}` with the correct version number, e.g.

   ```groovy
   implementation 'com.dynamsoft:dynamsoftbarcodereader:8.4.1@aar'
   implementation 'com.dynamsoft:dynamsoftcameraenhancer:1.0.1@aar'
   ```

## Build Your First Application

In this section, you will be guided on creating a Hello world app that can read barcodes from camera video input. `Dynamsoft Camera Enhancer` will be used to deploy the camera module for receiving video input.

### Initialize Camera Module

In the process of video barcode scanning, the camera will provide the video input for the barcode reader. In this section, you will be guided on how to initialize the camera module for barcode scanning with the help of `Dynamsoft Camera Enhancer`.

1. Import and instantiate the Camera Enhancer. If you have followed the installation guide, you can import Dynamsoft Barcode Reader (dbr) and Camera Enhancer (dce) in your project.

   Import:

   ```java
   import com.dynamsoft.dce.CameraEnhancer;
   import com.dynamsoft.dce.CameraDLSLicenseVerificationListener;
   import com.dynamsoft.dce.CameraState;
   import com.dynamsoft.dce.CameraView;
   ```

   Declare Camera Enhancer and CameraView at the start of the project. The camera view will be the UI of the camera in your app.

   ```java
   CameraView cameraView;            
   CameraEnhancer mCameraEnhancer;
   ```

2. Initialize the Camera Enhancer

   In `onCreate`, use the camera enhancer to turn on the camera and start getting video input for barcode scanning.

   ```java
   cameraView = findViewById(R.id.cameraView);
   mCameraEnhancer = new CameraEnhancer(MainActivity.this);
   mCameraEnhancer.addCameraView(cameraView);
   // Initialize the Camera Enhancer from Dynamsoft License Server.
   com.dynamsoft.dce.DMDLSConnectionParameters info = new com.dynamsoft.dce.DMDLSConnectionParameters();
   // Set the organizationID = 200001 to use the public trial.
   info.organizationID = "Put your organizationID here.";
   mCameraEnhancer.initLicenseFromDLS(info,new CameraDLSLicenseVerificationListener() {
      @Override
      public void DLSLicenseVerificationCallback(boolean isSuccess, Exception error) {
         if(!isSuccess){
            error.printStackTrace();
         }
      }
   });
   //Turn on the camera and start getting video input
   mCameraEnhancer.setCameraDesiredState(CameraState.CAMERA_STATE_ON);
   mCameraEnhancer.startScanning();
   ```

3. Add Camera control on pause and resume (out of `onCreate`).

   ```java
   @Override
   public void onResume() {
      reader.StartCameraEnhancer();
      super.onResume();
   }

   @Override
   public void onPause() {
      reader.StopCameraEnhancer();
      super.onPause();
   }
   ```

4. Edit layout file. The following code is the necessary content for you to display the camera UI and barcode decode result.

   ```xml
   <com.dynamsoft.dce.CameraView
      android:id="@+id/cameraView"
      android:layout_width="match_parent"
      android:layout_height="match_parent"
      tools:layout_editor_absoluteX="25dp"
      tools:layout_editor_absoluteY="0dp" />
   <TextView
      android:id="@+id/tv_res"
      android:layout_width="match_parent"
      android:layout_height="200dp"
      android:layout_marginTop="430dp"
      android:textSize="16sp"
      android:gravity="center"
      android:scrollbars="vertical"
      android:textColor="@color/white"
      android:visibility="visible"/>
   ```

### Initialize Barcode Reader

Import:

```java
import com.dynamsoft.dbr.BarcodeReader;
import com.dynamsoft.dbr.BarcodeReaderException;
import com.dynamsoft.dbr.DBRDLSLicenseVerificationListener;
import com.dynamsoft.dbr.DCESettingParameters;
import com.dynamsoft.dbr.TextResultCallback;
import com.dynamsoft.dbr.TextResult;
```

At the beginning of your class, please instantiate the Barcode Reader.

```java
BarcodeReader reader;
```

Add the following code to `onCreate`.

```java
try {
   reader = new BarcodeReader();
   com.dynamsoft.dbr.DMDLSConnectionParameters parameters = new com.dynamsoft.dbr.DMDLSConnectionParameters();
   parameters.organizationID = "Put your organizationID here.";
   reader.initLicenseFromDLS(parameters, new DBRDLSLicenseVerificationListener() {
      @Override
      public void DLSLicenseVerificationCallback(boolean b, Exception e) {
         if (!b) { e.printStackTrace(); }
      }
   });
} catch (BarcodeReaderException e) {
   e.printStackTrace();
}
```

### Set the Video Input Source

If you are following this guide and using `Dynamsoft Camera Enhancer` to create the camera module, please add the following code to start the barcode scanning. The Barcode Reader will automatically use the `decodeBuffer` method to process the video frames once it has received parameters transferred from the Camera Enhancer. Firstly, please declare the Text result callback. The Text result callback will be sent to the Barcode Reader as a parameter and help you in getting the barcode decode result.

```java
TextResultCallback mTextResultCallback;
```

Add the following code in `onCreate`.

```java
DCESettingParameters dceSettingParameters = new DCESettingParameters();
dceSettingParameters.cameraInstance = mCameraEnhancer;
dceSettingParameters.textResultCallback = mTextResultCallback;
reader.SetCameraEnhancerParam(dceSettingParameters);
```

### Get & Display Barcode Decode Result

Declare a text view for displaying the result.

```java
TextView tvRes;
```

Please put the following code before `DCESettingParameters` code.

```java
//Settings on text result will help you in getting and displaying the decoding result.
mTextResultCallback = new TextResultCallback() {
   @Override
   public void textResultCallback(int i, TextResult[] textResults, Object o) {
      if (textResults != null && textResults.length > 0) {
         String strRes = "";
         for ( i = 0; i < textResults.length; i++)
            strRes += textResults[i].barcodeText + "\n\n";
         tvRes.setText(strRes);
      } else{
         tvRes.setText("");
      }
   }
};
// Please add the code before this line.
// DCESettingParameters dceSettingParameters = new DCESettingParameters();
// dceSettingParameters.cameraInstance = mCameraEnhancer;
// dceSettingParameters.textResultCallback = mTextResultCallback;
// reader.SetCameraEnhancerParam(dceSettingParameters);
```

### Run the Project

If you have followed the above guide step by step, your project will be able to build a video barcode scanner. If the project is not working well, please check the [`template code`](https://github.com/Dynamsoft/barcode-reader-docs-mobile/blob/preview/programming/android/template.java){:target="_blank"} to find out the problems.

## Further Barcode Reading Settings

### Decoding Methods

The SDK provides multiple decoding methods that support reading barcodes from different sources, including static images, video stream, files in memory, base64 string, bitmap, etc. Here is a list of all decoding methods:

- [DecodeFile](api-reference/BarcodeReader/decode.md#decodefile): Reads barcodes from a specified file (BMP, JPEG, PNG, GIF, TIFF or PDF).
- [DecodeBase64String](api-reference/BarcodeReader/decode.md#decodebase64string): Reads barcodes from a base64 encoded string of a file.  
- [DecodeBitmap](api-reference/BarcodeReader/decode.md#decodebitmap): Reads barcodes from a bitmap. When handling multi-page images, it will only decode the current page.
- [DecodeBuffer](api-reference/BarcodeReader/decode.md#decodebuffer): Reads barcodes from raw buffer.
- [DecodeFileInMemory](api-reference/BarcodeReader/decode.md#decodefileinmemory): Decodes barcodes from an image file in memory.

You can find more samples in more programming languages at [Code Gallery](https://www.dynamsoft.com/Downloads/Dynamic-Barcode-Reader-Sample-Download.aspx){:target="_blank"} or [Github Repositories](https://github.com/dynamsoft-dbr?q=java&type=&language=){:target="_blank"}.

Calling the [decoding methods](#decoding-methods) directly will use the default scanning modes and it will satisfy most of the needs. The SDK also allows you to adjust the scanning settings to optimize the scanning performance for different usage scenarios.

### [`PublicRuntimeSettings`](api-reference/class/PublicRuntimeSettings.md)

Here are some typical scanning settings you might find helpful:

- [Specify Barcode Type to Read](#specify-barcode-type-to-read)
- [Specify Maximum Barcode Count](#specify-maximum-barcode-count)
- [Specify a Scan Region](#specify-a-scan-region)

For more scanning settings guide, please read the [How To Guide]({{site.introduction}}how-to-guide/){:target="_blank"} section.

#### Specify Barcode Type to Read

A simple barcode format setting will result in a higher processing speed. By default, the SDK will read all the supported barcode formats except Postal Codes and Dotcode from the image. Please use the [`BarcodeFormatIds`]({{ site.enumerations }}format-enums.html#barcodeformat) and [`BarcodeFormat_2`]({{ site.enumerations }}format-enums.html#barcodeformat_2) to specify your barcode format(s) so that you can find the balance between speed and readability.

#### Specify maximum barcode count

By default, the SDK will try to find at least one barcode. You can use `expectedBarcodesCount` to specify the maximum number of barcodes. If you set the maximum number of barcodes n, the SDK will try to find at least n barcodes. The scanning process will not stop until n barcodes are found or timeout.

#### Specify a scan region

By default, the barcode reader will scan the whole image for barcodes. This can lead to poor performance, especially when dealing with high-resolution images. You can speed up the recognition process by restricting the scanning region.

**Code Snippet** of PublicRuntimeSettings

The following code is a template on how to use `PublicRuntimeSettings`.

```java
PublicRuntimeSettings runtimeSettings = reader.getRuntimeSettings();
//The barcode is set to OneD barcode.
runtimeSettings.barcodeFormatIds = 0x7FF;
//The barcode will try to find 10 barcodes.
runtimeSettings.expectedBarcodesCount = 10;
//The following code shrinks the decoding region by 25% on all sides
runtimeSettings.region.regionTop = 25;
runtimeSettings.region.regionBottom = 75;
runtimeSettings.region.regionLeft = 25;
runtimeSettings.region.regionRight = 75;
//The region is determined by the percentage
runtimeSettings.region.regionMeasuredByPercentage = 1;
reader.updateRuntimeSettings(runtimeSettings);
```
