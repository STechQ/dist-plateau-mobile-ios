# **PlateauMobile SDK Integration Guide**
> ⚠️ **Note:** This documentation is **temporary** until the Swift Package Manager (SPM) integration is completed. Migration to SPM has already started.

---

## Requirements

- Xcode **16.2** is required.
- **Carthage** (XCFramework support required)

---

## Overview

This document describes how to integrate the **PlateauMobile SDK** into an iOS project using **Carthage**.

> ❗ **CocoaPods is no longer supported.**
> All dependencies are managed exclusively via **Carthage**.

---

## **Step 1: Carthage Setup**

1. Create a `Cartfile` if it doesn’t exist:

    ```bash
    touch Cartfile
    ```

2. Add the following dependencies to your `Cartfile`:

    ```ruby
    binary "https://raw.githubusercontent.com/STechQ/dist-plateau-mobile-ios/main/yoga-binaries/Cartfile.binary.json" ~> 3.2
    binary "https://raw.githubusercontent.com/STechQ/dist-plateau-mobile-ios/main/yogakit-binaries/Cartfile.binary.json" ~> 3.2
    binary "https://raw.githubusercontent.com/STechQ/dist-plateau-mobile-ios/main/plateaumobile-binaries/Cartfile.binary.json" ~> 1.0

    github "daltoniam/Starscream" "4.0.6"
    github "airbnb/lottie-ios" "4.5.0"
    github "danielgindi/Charts" "5.1.0"
    github "guoyingtao/Mantis" "v2.23.0"
    github "openid/AppAuth-iOS" "1.7.6"
    github "SDWebImage/SDWebImage" "5.21.0"
    github "SDWebImage/SDWebImageSVGCoder" "1.7.0"
    ```
    
> ℹ️ **Note**
>  
> The PlateauMobile SDK version may change over time.  
> Please contact the relevant team to confirm the latest compatible version.


3. Run Carthage with XCFramework support:

    ```bash
    carthage update --use-xcframeworks --platform iOS
    ```

---

## ✅ Integration Complete

At this point, your project is configured to use:

- **Carthage** for dependency management and framework usage.

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
