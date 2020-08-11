import Flutter
import UIKit

public class SwiftAlartPackagePlugin: NSObject, FlutterPlugin {
  public static func register(with registrar: FlutterPluginRegistrar) {
    let channel = FlutterMethodChannel(name: "alart_package", binaryMessenger: registrar.messenger())
    let instance = SwiftAlartPackagePlugin()
    registrar.addMethodCallDelegate(instance, channel: channel)
  }

  public func handle(_ call: FlutterMethodCall, result: @escaping FlutterResult) {
    
    if (call.method.elementsEqual("showToast")){
        let arguments = call.arguments as? NSDictionary
        let msg = (arguments!["msg"] as? String)!
       // UIAlertView (title: "", message: msg, delegate: nil, cancelButtonTitle: "Ok").show()
        UIAlertView(title: "", message:msg , delegate: nil, cancelButtonTitle: "cancle", otherButtonTitles: "Ok").show()
    }
//    if (call.method.elementsEqual("showToast")){
//      let arguments = call.arguments as? NSDictionary
//      let msg = arguments!["msg"] as? String
//      UIAlertView(title:"Alart", message:msg, delegate: nil, cancelButtonTitle: "Ok").show()
//    }
  }
}

