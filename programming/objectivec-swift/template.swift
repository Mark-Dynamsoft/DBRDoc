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
