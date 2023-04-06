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
    
}
