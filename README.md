# **PlateauMobile SDK Integration Guide**
> ⚠️ **Note:** This documentation is **temporary** until the Swift Package Manager (SPM) integration is completed. Migration to SPM has already started.

---

## Requirements

- Xcode **16.2** is required.

This document explains how to integrate the **PlateauMobile** SDK into your iOS project.  
> ⚠️ Integration requires **both Carthage and CocoaPods**. CocoaPods is only used to retrieve the `PlateauMobile` SDK framework, which is then manually copied. After that, CocoaPods should be removed from the project.

---

## **Step 1: Carthage Setup**

1. Create a `Cartfile` if it doesn’t exist:

    ```bash
    touch Cartfile
    ```

2. Add the following dependencies to your `Cartfile`:

    ```ruby
    github "daltoniam/Starscream" "4.0.6"
    github "airbnb/lottie-ios" "4.5.0"
    github "danielgindi/Charts" "5.1.0"
    github "guoyingtao/Mantis" "v2.14.1"
    github "openid/AppAuth-iOS" "1.6.2"
    ```

3. Run Carthage with XCFramework support:

    ```bash
    carthage update --use-xcframeworks --platform iOS
    ```

4. Manually copy the required **Yoga** frameworks located in the SDK’s `Frameworks` directory into your local `Carthage/Build` folder.

---

## **Step 2: Retrieve PlateauMobile SDK via CocoaPods**

1. Initialize CocoaPods (if not already done):

    ```bash
    pod init
    ```

2. Add the following to your `Podfile`:

    ```ruby
    pod 'PlateauMobile', :git => 'https://github.com/STechQ/dist-plateau-mobile-ios.git', :tag => '1.0.10'
    ```

3. Run installation:

    ```bash
    pod install
    ```

4. After installation, navigate to:

    ```
    Pods/PlateauMobile/PlateauMobile.xcframeworks
    ```

5. Manually copy the `.xcframeworks` into your local `Carthage/Build` directory.

---

## **Step 3: Remove CocoaPods (Cleanup)**

1. In your `Podfile`, comment or delete the following lines:

    ```ruby
    # use_frameworks!
    # pod 'PlateauMobile'
    ```

2. Run the following to clean and reinstall other pods (if any):

    ```bash
    pod deintegrate
    pod install
    ```

---

## ✅ Integration Complete

At this point, your project is configured to use:

- **Carthage** for dependency management and framework usage.
- The `PlateauMobile` SDK, manually extracted from CocoaPods and copied into your Carthage build directory.

---

## **Using the SDK in Your Application**

```swift
import UIKit
import PlateauMobile
import JavaScriptCore

class ViewController: UIViewController, QMScreenDelegateProtocol {

    override func viewDidLoad() {
        super.viewDidLoad()
        startApp()
    }

    func showLoadingView() {
        // Show custom loading indicator
    }

    func hideLoadingView() {
        // Hide custom loading indicator
    }

    func redirectToNativePage(pageId: String,
                              parameters: [String: Any],
                              transitionStyle: String,
                              animation: String) {
        // Handle native navigation
    }

    public func startApp() {
        let errorCallback: () -> Void = {
            print("Error in Opening App")
        }

        QBRenderingManager.shared.startApplication(
            appUrl: "Your App Url",
            showloading: showLoadingView,
            hideLoading: hideLoadingView,
            screenDelegate: self,
            errorCallback: errorCallback
        )
    }

    func callMethod(functionName: String?,
                    param: [String : Any]?,
                    callBack: JSValue,
                    context: JSContext,
                    pageNames: [String]) {

        switch functionName {
        case "GetToken":
            var returnParams: [String: Any] = ["token": "tokenValue"]
            let returnValue: NSDictionary = ["isSuccess": true, "retVal": returnParams]
            let result = JSValue(object: returnValue, in: context)
            callBack.call(withArguments: [result!])

        case "GetUserInfo":
            var returnParams: [String: Any] = [
                "UserNameSurname": "nameAndSurnameValue",
                "SicilNo": "sicilValue"
            ]
            let returnValue: NSDictionary = ["isSuccess": true, "retVal": returnParams]
            let result = JSValue(object: returnValue, in: context)
            callBack.call(withArguments: [result!])

        default:
            break
        }
    }
}
