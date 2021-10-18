---
layout: default-layout
title: Dynamsoft Barcode Reader for Objective-C & Swift - User Guide v8.4.1
description: This is the user guide v8.4.1 of Dynamsoft Barcode Reader for iOS SDK.
keywords: user guide, objective-c, oc, swift
needAutoGenerateSidebar: true
needGenerateH3Content: true
noTitleIndex: true
---


# User Guide for Objective-C & Swift

## Requirements

- Operating systems:
  - macOS 10.11 and above.
  - iOS 9.0 and above.
- Environment: Xcode 7.1 - 11.5 and above.
- Recommended: macOS 10.15.4+, Xcode 11.5+, iOS 11+

## Installation

If you have downloaded the SDK from the [Dynamsoft website](https://www.dynamsoft.com/barcode-reader/downloads/){:target="_blank"} and unzipped `dbr-ios-{version-number}.zip`, you can find two `frameworks`  and a sample folder. You can simply include `DynamsoftBarcodeReader` to your project to start creating a barcode scanning app. The other framework, `DynamsoftCameraEnhancer`, is an expansion package which integrates video frame preprocessing algorithms and camera control APIs. In this guide, we will use the `Camera Enhancer` to create the camera module for receiving video input.

| Framework | Description |
|---------|-------------|
| `DynamsoftBarcodeReader.framework` | The Barcode Reader package, includes all barcode decoding releated algorithms and APIs. |
| `DynamsoftCameraEnhancer.framework` | The Camera Enhancer Package, includes camera control APIs and frame preprocessing algorithm.  |

You can add your downloaded frameworks into your project by the following steps:

1. Create a new iOS project in Xcode.
2. Add the barcode reader and camera enhancer frameworks to your project

   - Unzip the downloaded ZIP file `dbr-ios-{version number}.zip` and you'll see `DynamsoftBarcodeReader.framework` and `DynamsoftCameraEnhancer.framework`.

   - Drag and drop the frameworks into your Xcode project. Make sure to check Copy items if needed and Create groups to copy the frameworks into your project's folder.

3. Add the required `.tbd/.dylib` file to your project.
   Go to the `Build Phases` tab of your Xcode project, under `Link Binary with Libraries` section, click + button. Search for the file `libc++.tbd`, select it and click Add button. Then the libc++.tbd file will be copied to your project.

4. Import the frameworks' header. Then, you can move on to coding.

   Objective-C:

   ```objc
   #import <DynamsoftBarcodeReader/DynamsoftBarcodeSDK.h>
   #import <DynamsoftCameraEnhancer/DynamsoftCameraEnhancer.h>
   ```

   Swift:

   ```Swift
   import DynamsoftBarcodeReader
   import DynamsoftCameraEnhancer
   ```

## Build Your First Application

In this section, you will be guided on creating a Hello world app which can read barcodes from camera video input. `Dynamsoft Camera Enhancer` will be used to deploy the camera video input module in this guide. Please follow the steps below.

### Configure the Camera

In the process of video barcode scanning, the camera will provide the video input for the barcode reader. In this section, you will be guided on how to initialize the camera module for barcode scanning with the help of `Dynamsoft Camera Enhancer`. You can skip this step if you are not going to use `Dynamsoft Camera Enhancer` to create your camera module.

Objective-C:

Initialize the Camera Enhancer:

```objectivec
@interface ViewController ()
@property(nonatomic, strong) DynamsoftCameraEnhancer *dce;
@property(nonatomic, strong) DCECaptureView *dceView;

@end

@implementation ViewController
   
- (void)viewDidLoad {
    [super viewDidLoad];
    [self configurationDCE];
}

override func viewWillAppear(_ animated: Bool) {
    super.viewWillAppear(animated)
}
```

Use the following codes to deploy the camera module.

```objectivec
/*Deploy the camera with Dynamsoft Camera Enhancer.*/
- (void)configurationDCE{
    _dceView = [DCECaptureView captureWithFrame:self.view.bounds];
    [_dceView addOverlay];
    [self.view addSubview:_dceView];
    iDCEdlsConnectionParameters* dcePara = [[iDCEdlsConnectionParameters alloc] init];
    /*Set the organizationID = 200001 to use the public trial*/
    dcePara.organizationID = @"Put your organizationID here";
    _dce = [[DynamsoftCameraEnhancer alloc] initLicenseFromDLS:dcePara;        
    view:_dceView verificationDelegate:self];
    [_dce setCameraDesiredState:CAMERA_STATE_ON];
    _dce.isEnable = YES;
}
```

Swift:

Initialize the Camera Enhancer:

```swift
var dce:DynamsoftCameraEnhancer! = nil
var dceView:DCECaptureView! = nil

override func viewDidLoad() {
    super.viewDidLoad()
    configurationDCE()
}

override func viewWillAppear(_ animated: Bool) {
    super.viewWillAppear(animated)
}
```

Use the following codes to deploy the camera module:

```swift
/*Deploy the camera with Dynamsoft Camera Enhancer.*/
func configurationDCE() {
    dceView = DCECaptureView.init(view: self.view.bounds)
    dceView.addOverlay()
    self.view.addSubview(dceView)
    let dls = iDCEdlsConnectionParameters()
    /*Set the organizationID = 200001 to use the public trial*/
    dls.organizationID = "Put your organizationID here"
    dce = DynamsoftCameraEnhancer.init(licenseFromDLS: dls, view: dceView, verificationDelegate: self)
    dce.setCameraDesiredState(.CAMERA_STATE_ON)
}
```

### Configure the Barcode Reader

Please add the following code to configure the barcode reader.

Objective-C:

Add code to initialize the Barcode reader:

```objectivec
@interface ViewController ()
@property(nonatomic, strong) DynamsoftBarcodeReader *barcodeReader;
/*@property(nonatomic, strong) DynamsoftCameraEnhancer *dce;*/
/*@property(nonatomic, strong) DCECaptureView *dceView;*/

@end
    
@implementation ViewController
   
- (void)viewDidLoad {
    /*[super viewDidLoad];*/
    [self initDBR];
    /*[self configurationDCE];*/
}
/*
override func viewWillAppear(_ animated: Bool) {
    super.viewWillAppear(animated)
}
*/
```

Add configurations to the barcode reader:

```objectivec
/*Initialize Dynamsoft Barcode Reader from Dynamsoft License Server.*/
- (void)initDBR{
    iDMDLSConnectionParameters* dbrPara = [[iDMDLSConnectionParameters alloc] init];
    //Initialize DBR License
    dbrPara.organizationID = @"Put your organizationID here";
    _barcodeReader = [[DynamsoftBarcodeReader alloc] initLicenseFromDLS:dbrPara verificationDelegate:self];
}
```

Swift:

Add code to initialize the Barcode reader:

```swift
/*
var dce:DynamsoftCameraEnhancer! = nil
var dceView:DCECaptureView! = nil
*/
var barcodeReader:DynamsoftBarcodeReader! = nil
override func viewDidLoad() {
    /*super.viewDidLoad()*/
    /*Put the code for DBR initialization here*/
    initDBR()
    /*configurationDCE()*/
}
/*
override func viewWillAppear(_ animated: Bool) {
    super.viewWillAppear(animated)
}
*/
```

Add configurations to the barcode reader:

```swift
func initDBR() {
    /*Initialize Dynamsoft Barcode Reader from Dynamsoft License Server.*/
    let dls = iDMDLSConnectionParameters()
    dls.organizationID = "Put your organizationID here"
    barcodeReader = DynamsoftBarcodeReader(licenseFromDLS: dls, verificationDelegate: self)
}
```

### Set the Video Input Source

If you are following this guide and using `Dynamsoft Camera Enhancer` to create the camera module, please add the following code to set the camera enhancer as video input source and start the barcode scanning. The Barcode Reader will automatically use the `decodeBuffer` method to process the video frames once it has received parameters transferred from the Camera Enhancer.

Objective-C:

In `configurationDCE` add the following code to set camera enhancer parameter:

```objectivec
/*Deploy the camera with Dynamsoft Camera Enhancer.*/
- (void)configurationDCE{
    /*
    _dceView = [DCECaptureView captureWithFrame:self.view.bounds];
    [_dceView addOverlay];
    [self.view addSubview:_dceView];
    iDCEdlsConnectionParameters* dcePara = [[iDCEdlsConnectionParameters alloc] init];
    dcePara.organizationID = @"Put your organizationID here";
    _dce = [[DynamsoftCameraEnhancer alloc] initLicenseFromDLS:dcePara;        
    view:_dceView verificationDelegate:self];
    [_dce setCameraDesiredState:CAMERA_STATE_ON];
    _dce.isEnable = YES;
    */
    
    /*
    Put the code for setting the video input source here.
    Set DCE setting parameters in Dynamsoft Barcode Reader.
    The camera instance will be transferred as an argument to the barcode reader.
    With the Camera instance, the barcode reader will automatically use decodeBuffer as the decode method.
    */
    DCESettingParameters* para = [[DCESettingParameter alloc] init];
    para.cameraInstance = _dce;
    para.textResultDelegate = self;
    [_barcodeReader setCameraEnhancerPara:para];
}
```

Swift:

In `configurationDCE` add the following code to set camera enhancer parameter:

```swift
/*Deploy the camera with Dynamsoft Camera Enhancer.*/
func configurationDCE() {
    /*
    dceView = DCECaptureView.init(view: self.view.bounds)
    dceView.addOverlay()
    self.view.addSubview(dceView)
    let dls = iDCEdlsConnectionParameters()
    dls.organizationID = "Put your organizationID here"
    dce = DynamsoftCameraEnhancer.init(licenseFromDLS: dls, view: dceView, verificationDelegate: self)
    dce.setCameraDesiredState(.CAMERA_STATE_ON)
    */
    /*
    Put the code for setting the video input source here.
    Set DCE setting parameters in Dynamsoft Barcode Reader.
    The camera instance will be transferred as an argument to the barcode reader.
    With the Camera instance, the barcode reader will automatically use decodeBuffer as the decode method.
    */
    let para = DCESettingParameters.init()
    para.cameraInstance = dce
    para.textResultDelegate = self
    barcodeReader.setCameraEnhancerPara(para)
}
```

### Get & Display Barcode Decode Result

The following functions will help you get the text results and display them on the screen.

Objective-C:

```objectivec
/*Get and display the text result.*/
- (void)textResultCallback:(NSInteger)frameId results:(NSArray<iTextResult *> *)results userData:(NSObject *)userData{
    if (results.count > 0) {
        _dce.isEnable = NO;
        __weak ViewController *weakSelf = self;
        [self showResult:results.firstObject.barcodeText
            completion:^{
                weakSelf.dce.isEnable = YES;
            }];
    }else{
        return;
    }
}

/*This is the function for displaying decode result on the screen*/
- (void)showResult:(NSString *)result completion:(void (^)(void))completion {
    dispatch_async(dispatch_get_main_queue(), ^{
        UIAlertController *alert = [UIAlertController alertControllerWithTitle:result message:nil preferredStyle:UIAlertControllerStyleAlert];
        [alert addAction:[UIAlertAction actionWithTitle:@"OK" style:UIAlertActionStyleDefault
                                                handler:^(UIAlertAction * action) {
                                                    completion();
                                                }]];
        [self presentViewController:alert animated:YES completion:nil];
    });
}
```

Swift:

```swift
/*Get and display the text result.*/
func textResultCallback(_ frameId: Int, results: [iTextResult]?, userData: NSObject?) {
    if results!.count > 0 {
        dce.isEnable = false
        showResult(results!.first!.barcodeText!) { [weak self] in
            self?.dce.isEnable = true
        }
    }else{
        return
    }
}

/*This is the function for displaying decode result on the screen*/
private func showResult(_ result: String, completion: @escaping () -> Void) {
    DispatchQueue.main.async {
        let alert = UIAlertController(title: result, message: nil, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "OK", style: .default, handler: { _ in completion() }))
        self.present(alert, animated: true, completion: nil)
    }
}
```

### Run the Project

If you have followed the above guide step by step, your project will be able to build a video barcode scanner. If the project is not working well, please check the template code to find out the problems.

- [`Objective-C template`](https://github.com/Dynamsoft/barcode-reader-docs-mobile/blob/preview/programming/objectivec-swift/template.m){:target="_blank"}
- [`Swift template`](https://github.com/Dynamsoft/barcode-reader-docs-mobile/blob/preview/programming/objectivec-swift/template.swift){:target="_blank"}

## Further Barcode Reading Settings

### Decoding Methods

The SDK provides multiple decoding methods that support reading barcodes from different sources, including static images,
video stream, files in memory, base64 string, bitmap, etc. Here is a list of all decoding methods:

- [decodeFile](api-reference/methods/decode.md#decodefilewithname): Reads barcodes from a specified file (BMP, JPEG, PNG, GIF, TIFF or PDF).
- [decodebase64](api-reference/methods/decode.md#decodebase64): Reads barcodes from a base64 encoded string of a file.  
- [decodeBuffer](api-reference/methods/decode.md#decodebuffer): Reads barcodes from raw buffer.
- [decodeImage](api-reference/methods/decode.md#decodeimage): Decodes barcodes from an image file in memory.

You can find more samples in more programming languages at [Code Gallery](https://www.dynamsoft.com/Downloads/Dynamic-Barcode-Reader-Sample-Download.aspx){:target="_blank"}.

Calling the [decoding methods](#decoding-methods) directly will use the default scanning modes and it will satisfy most of the needs. The SDK also allows you to adjust the scanning settings to optimize the scanning performance for different usage scenarios.

### [`PublicRuntimeSettings`](api-reference/class/iPublicRuntimeSettings.md)

Here are some typical scanning settings you might find helpful:

- [Specify Barcode Type to Read](#specify-barcode-type-to-read)
- [Specify Maximum Barcode Count](#specify-maximum-barcode-count)
- [Specify a Scan Region](#specify-a-scan-region)

For more scanning settings guide, please read the [How To Guide]({{site.introduction}}how-to-guide/){:target="_blank"} section.

#### Specify barcode type to read

A simple barcode format setting will result in a higher processing speed. By default, the SDK will read all the supported barcode formats except Postal Codes and Dotcode from the image. Please use the [`BarcodeFormatIds`]({{ site.enumerations }}format-enums.html#barcodeformat){:target="_blank"} and [`BarcodeFormat_2`]({{ site.enumerations }}format-enums.html#barcodeformat_2){:target="_blank"} to specify your barcode format(s) so that you can find the balance between speed and readability.

#### Specify maximum barcode count

By default, the SDK will try to find at least one barcode. You can use `expectedBarcodesCount` to specify the maximum number of barcodes. If you set the maximum number of barcodes n, the SDK will try to find at least n barcodes. The scanning process will not stop until n barcodes are found or timeout.

#### Specify a scan region

By default, the barcode reader will scan the whole image for barcodes. This can lead to poor performance, especially when dealing with high-resolution images. You can speed up the recognition process by restricting the scanning region.

#**Code Snippet** of publicRuntimeSettings

The following code is a template on how to use `PublicRuntimeSettings`.

Objective-C:

```objc
iPublicRuntimeSettings* settings = [barcodeReader getRuntimeSettings:nil];
// Set the barcode format
settings.barcodeFormatIds = EnumBarcodeFormatONED;
settings.expectedBarcodesCount = 1;
// Set the scan region
//The following code shrinks the decoding region by 25% on all sides
settings.region.regionTop = 25;
settings.region.regionBottom = 75;
settings.region.regionLeft = 25;
settings.region.regionRight = 75;
//The region is determined by percentage
settings.region.regionMeasuredByPercentage = 1;
[barcodeReader updateRuntimeSettings:settings error:&error];
```

Swift:

```Swift
let settings = try reader.getRuntimeSettings()
// Set the barcode format
settings.barcodeFormatIds = Int(EnumBarcodeFormat.ONED.rawValue)
settings.expectedBarcodesCount = 1
// Set the scan region
//The following code shrinks the decoding region by 25% on all sides
settings.region.regionTop = 25
settings.region.regionBottom = 75
settings.region.regionLeft = 25
settings.region.regionRight = 75
//The region is determined by percentage
settings.region.regionMeasuredByPercentage = 1
reader.update(settings, error: nil)
```
