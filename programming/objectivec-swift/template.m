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
