import UIKit
import Flutter
import GoogleMaps
import Firebase
import UserNotifications

@UIApplicationMain
@available(iOS 10.0, *)
@objc class AppDelegate: FlutterAppDelegate {
  override func application(
    _ application: UIApplication,
    didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?
  ) -> Bool {
    GMSServices.provideAPIKey("AIzaSyCUwR60JXqQWI5nX1t_oxZyDx-GQxVSgKw")
    FirebaseApp.configure() //add this before the code below
    
    // Push notifications configuration
    if #available(iOS 10.0, *) {
        UNUserNotificationCenter.current().delegate = self
    }
    
    GeneratedPluginRegistrant.register(with: self)
    return super.application(application, didFinishLaunchingWithOptions: launchOptions)
  }
  
  @available(iOS 10.0, *)
  override func userNotificationCenter(_ center: UNUserNotificationCenter, willPresent notification: UNNotification, withCompletionHandler completionHandler: @escaping (UNNotificationPresentationOptions) -> Void) {
      completionHandler([.banner, .badge, .sound])
  }

  @available(iOS 10.0, *)
  override func userNotificationCenter(_ center: UNUserNotificationCenter, didReceive response: UNNotificationResponse, withCompletionHandler completionHandler: @escaping () -> Void) {
      completionHandler()
  }
}
