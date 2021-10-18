---
layout: default-layout
title: Dynamsoft Barcode Reader for iOS - Template Code
description: This is the template code of Dynamsoft Barcode Reader for iOS SDK.
keywords: Template Code, iOS
---

# iOS Template Code For User Guide

Objective-C:

```objc
#import "ViewController.h"
#import <DynamsoftBarcodeReader/DynamsoftBarcodeReader.h>
#import <DynamsoftCameraEnhancer/DynamsoftCameraEnhancer.h>
@interface ViewController ()
@property(nonatomic, strong) DynamsoftBarcodeReader *barcodeReader;
@property(nonatomic, strong) DynamsoftCameraEnhancer *dce;
@property(nonatomic, strong) DCECaptureView *dceView;

@end
    
@implementation ViewController
   
- (void)viewDidLoad {
    [super viewDidLoad];
    [self initDBR];
    [self configurationDCE];
}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
}

/*Initialize Dynamsoft Barcode Reader from Dynamsoft License Server.*/
- (void)initDBR{
    iDMDLSConnectionParameters* dbrPara = [[iDMDLSConnectionParameters alloc] init];
    //Initialize DBR License
    dbrPara.organizationID = @"Put your organizationID here";
    _barcodeReader = [[DynamsoftBarcodeReader alloc] initLicenseFromDLS:dbrPara verificationDelegate:self];
}

/*Deploy the camera with Dynamsoft Camera Enhancer.*/
- (void)configurationDCE{
    _dceView = [DCECaptureView captureWithFrame:self.view.bounds];
    [_dceView addOverlay];
    [self.view addSubview:_dceView];
    iDCEdlsConnectionParameters* dcePara = [[iDCEdlsConnectionParameters alloc] init];
    dcePara.organizationID = @"Put your organizationID here";
    _dce = [[DynamsoftCameraEnhancer alloc] initLicenseFromDLS:dcePara;        
    view:_dceView verificationDelegate:self];
    [_dce setCameraDesiredState:CAMERA_STATE_ON];
    _dce.isEnable = YES;
    DCESettingParameters* para = [[DCESettingParameter alloc] init];
    para.cameraInstance = _dce;
    para.textResultDelegate = self;
    [_barcodeReader setCameraEnhancerPara:para];
}

- (void)CameraDLSLicenseVerificationCallback:(bool)isSuccess error:(NSError *)error{
    NSLog(@"Verification: %@",error.userInfo);
}

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
        UIAlertController *alert = [UIAlertController alertControllerWithTitle:result message:nil
        preferredStyle:UIAlertControllerStyleAlert];
        [alert addAction:[UIAlertAction actionWithTitle:@"OK" style:UIAlertActionStyleDefault
                                                handler:^(UIAlertAction * action) {
                                                    completion();
                                                }]];
        [self presentViewController:alert animated:YES completion:nil];
    });
}

@end
```

[Back to guide](user-guide.md)

Swift:

```Swift
import UIKit
import DynamsoftBarcodeReader
import DynamsoftCameraEnhancer

class ViewController: UIViewController, CameraDLSLicenseVerificationDelegate, DBRTextResultDelegate {
        
    var dce:DynamsoftCameraEnhancer! = nil
    var dceView:DCECaptureView! = nil
    var barcodeReader:DynamsoftBarcodeReader! = nil
    override func viewDidLoad() {
        super.viewDidLoad()
        initDBR()
        configurationDCE()
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
    }
        
    func initDBR() {
        /*Initialize Dynamsoft Barcode Reader from Dynamsoft License Server.*/
        let lts = iDMDLSConnectionParameters()
        lts.organizationID = "Put your organizationID here"
        barcodeReader = DynamsoftBarcodeReader(licenseFromDLS: dls, verificationDelegate: self)
    }
    /*Deploy the camera with Dynamsoft Camera Enhancer.*/
    func configurationDCE() {
        dceView = DCECaptureView.init(view: self.view.bounds)
        dceView.addOverlay()
        self.view.addSubview(dceView)
        let lts = iDCEdlsConnectionParameters()
        lts.organizationID = "Put your organizationID here"
        dce = DynamsoftCameraEnhancer.init(licenseFromDLS: dls, view: dceView, verificationDelegate: self)
        dce.setCameraDesiredState(.CAMERA_STATE_ON)
        /*Set DCE setting parameters in Dynamsoft Barcode Reader.
        The camera instance will be transferred as an argument to the barcode reader.
        With the Camera instance, the barcode reader will automatically use decodeBuffer as the decode method.*/
        let para = DCESettingParameters.init()
        para.cameraInstance = dce
        para.textResultDelegate = self
        barcodeReader.setCameraEnhancerPara(para)
    }

    func cameraDLSLicenseVerificationCallback(_ isSuccess: Bool, error: Error?) {
        print("Verification: \(String(describing: error))")
    }
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
}
```

[Back to guide](user-guide.md)
