
## **PlateauMobile SDK Eklenmesi Ve Kullanımı - V1.0.1**

## **1- SDK’ların Alınması**

**1. Projenin Cartfile dosyasına aşağıdaki kütüphaneler resimdeki gibi eklenir.**

	github "Alamofire/Alamofire" ~> 5.1

	github "daltoniam/Starscream" >= 4.0.0

	github "airbnb/lottie-ios" "4.1.2"

	github "danielgindi/Charts" == 4.1.0

	github "guoyingtao/Mantis" "v2.14.1"
 

**2. Terminalde Cartfile dosyasının olduğu proje dizinine gidilir ve aşağıdaki komut çalıştırılır.**
- *carthage update --use-xcframeworks --platform iOS*

**3. Carthage ile alınan frameworklerin olduğu dizine size iletilen <a name="ole_link9"></a><a name="ole_link10"></a>PlateauMobile.xcframework dosyası, yoga.xcframework ve YogaKit.xcframework kopyalanır.**

**4. Proje içerisinden tüm frameworkler eklenir.**





















## **2- SDK’nın Çalıştırılması**

**1. import PlateauMobile yapılmalıdır.**

**2. QMScreenDelegateProtocol implement edilmelidir.**

**3. showLoadingView ve hideLoadingView override edilmelidir.**

**4. Uygulama başlatma**


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

