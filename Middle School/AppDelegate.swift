//
//  AppDelegate.swift
//  Middle School
//
//  Created by amr gamal on 2/8/20.
//  Copyright © 2020 amr gamal. All rights reserved.
//

import UIKit
import IQKeyboardManagerSwift
import IQKeyboardManagerSwift



@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    var window: UIWindow?
    let gcmMessageIDKey = "gcm.message_id"
    
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        IQKeyboardManager.shared.enable = true
        //        LocationHelper.shared.startLocationUpdates()
      
        
        LocationHelper.shared
      
        
        //   Messaging.messaging().delegate = self
        
        if #available(iOS 10.0, *) {
            // For iOS 10 display notification (sent via APNS)
            UNUserNotificationCenter.current().delegate = self
            
            let authOptions: UNAuthorizationOptions = [.alert, .badge, .sound]
            UNUserNotificationCenter.current().requestAuthorization(
                options: authOptions,
                completionHandler: {_, _ in })
        } else {
            let settings: UIUserNotificationSettings =
            UIUserNotificationSettings(types: [.alert, .badge, .sound], categories: nil)
            application.registerUserNotificationSettings(settings)
        }
        
        application.registerForRemoteNotifications()
        
        return true
    }
    
    
    
    
    
    
    
    // [START receive_message]
    func application(_ application: UIApplication, didReceiveRemoteNotification userInfo: [AnyHashable: Any]) {
        if let messageID = userInfo[gcmMessageIDKey] {
            print("Message ID: \(messageID)")
        }
        print(userInfo)
    }
    
    func application(_ application: UIApplication, didReceiveRemoteNotification userInfo: [AnyHashable: Any],
                     fetchCompletionHandler completionHandler: @escaping (UIBackgroundFetchResult) -> Void) {
        
        if let messageID = userInfo[gcmMessageIDKey] {
            print("Message ID: \(messageID)")
        }
        // Print full message.
        print(userInfo)
        
        completionHandler(UIBackgroundFetchResult.newData)
    }
    // [END receive_message]
    func application(_ application: UIApplication, didFailToRegisterForRemoteNotificationsWithError error: Error) {
        print("Unable to register for remote notifications: \(error.localizedDescription)")
    }
    
    func application(_ application: UIApplication, didRegisterForRemoteNotificationsWithDeviceToken deviceToken: Data) {
        print("APNs token retrieved: \(deviceToken)")
        
    }
    
    func applicationWillResignActive(_ application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
    }
    
    func applicationDidEnterBackground(_ application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    }
    
    func applicationWillEnterForeground(_ application: UIApplication) {
        // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
    }
    
    func applicationDidBecomeActive(_ application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }
    
    func applicationWillTerminate(_ application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }
    
    
}


// [START ios_10_message_handling]
@available(iOS 10, *)
extension AppDelegate : UNUserNotificationCenterDelegate {
    
    // Receive displayed notifications for iOS 10 devices.
//    func userNotificationCenter(_ center: UNUserNotificationCenter,
//                                willPresent notification: UNNotification,
//                                withCompletionHandler completionHandler: @escaping (UNNotificationPresentationOptions) -> Void) {
//        let userInfo = notification.request.content.userInfo
//        print("Notification: \(userInfo)")
//
//        //                if let messageID:String = userInfo["Notification"] as? String {
//        do {
//            //                        let con = try JSONSerialization.jsonObject(with: messageID.data(using: .utf8)!, options: []) as! [String:Any]
//            showNotificationDialog(aps: userInfo["aps"]! as! NSDictionary, type: userInfo["gcm.notification.type"]  as? String ?? "0", caller_id: userInfo["gcm.notification.caller_id"]  as? String ?? "", caller_name: userInfo["gcm.notification.caller_name"]  as? String ?? "", order_id: userInfo["gcm.notification.order_id"]  as? String ?? "", user_id: userInfo["gcm.notification.user_id"]  as? String ?? "")
//            completionHandler([])
//        }catch {
//            print(error)
//        }
//    }
    
    
    
    func userNotificationCenter(_ center: UNUserNotificationCenter,
                                didReceive response: UNNotificationResponse,
                                withCompletionHandler completionHandler: @escaping () -> Void) {
        let userInfo = response.notification.request.content.userInfo
        print("Notification: \(userInfo)")
        
        //                if let messageID:String = userInfo["Notification"] as? String {
        //                    print("Notification: \(messageID)")
        do {
            //let con = try JSONSerialization.jsonObject(with: messageID.data(using: .utf8)!, options: []) as! [String:Any]
       //     showNotificationDialog(aps: userInfo["aps"]! as! NSDictionary,userInfo:userInfo as NSDictionary )
            completionHandler()
        }catch {
            print(error)
        }
        //                }
    }
    
//    func showNotificationDialog(aps:NSDictionary, type:String, caller_id:String, caller_name:String,order_id: String,user_id:String)  {
//        
//        
//        let title:String = (aps["alert"] as! NSDictionary)["title"]  as? String ?? ""
//        let body:String = (aps["alert"] as! NSDictionary)["body"]  as? String ?? ""
//        
//            if type == "1" {
//                let  storyboard = UIStoryboard(name: "Main", bundle: nil)
//                let destinationViewController = storyboard.instantiateViewController(withIdentifier: "ShowCall") as! ShowCall
//                destinationViewController.caller_id = caller_id
//                destinationViewController.caller_name = caller_name
//
//                destinationViewController.order_id = order_id
//                destinationViewController.user_id = user_id
//                let appDelegate = UIApplication.shared.delegate as! AppDelegate
//                appDelegate.window?.rootViewController = destinationViewController
//
//            }
//            else {
//                AlertMessages.showMessage(title: title, body: body, theme: .success)
//            }
//        
//        
//    }
    
}


