
## **PlateauMobile SDK**

## **Pod**

**To integrate PlateauMobile into your Xcode project using CocoaPods, add following line into your pod file**

	pod 'PlateaMobile'

## **Start your application**

    import UIKit
    import PlateauMobile
    class ViewController: UIViewController, QMScreenDelegateProtocol {
    
	    override func viewDidLoad() {
	        super.viewDidLoad()
	        startApp()
	
	    }
	    func showLoadingView() {
	        /* Loading start */
	    }
	
	    func hideLoadingView() {
	        /* Loading end */
	    }
	
	    public func startApp()
	    {
	        QBRenderingManager.shared.startApplication(appUrl: "Your App Url",
	                                                   showloading: showLoadingView,
	                                                   hideLoading: hideLoadingView,
	                                                   screenDelegate: self)
	    }
     }








#

