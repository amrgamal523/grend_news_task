//
//  LogHelper.swift
//
//  Created by Amr Elsayed on 1/15/18.
//  Copyright © 2018 Amr Elsayed. All rights reserved.

import UIKit

class LogHelper: NSObject {

    static func StartMainHome()
    {
      let mainStoryBoard = UIStoryboard(name: "Main", bundle: nil)
              let main_page_navigation = mainStoryBoard.instantiateViewController(withIdentifier: "Home") as! UIViewController
              let appDelegate = UIApplication.shared.delegate as! AppDelegate
              appDelegate.window?.rootViewController = main_page_navigation
    }
 
    
    
    
    static func logout()
    {
        Defaults.resetDefaults()
        let mainStoryBoard = UIStoryboard(name: "Main", bundle: nil)
        let main_page_navigation = mainStoryBoard.instantiateViewController(withIdentifier: "Login")
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        appDelegate.window?.rootViewController = main_page_navigation
    }
    
    static func goToViewController(identifier:String,parentVC:UIViewController)
    {
    
        let  storyboard = UIStoryboard(name: "Main", bundle: nil)
        let destinationViewController = storyboard.instantiateViewController(withIdentifier: identifier)
        parentVC.present(destinationViewController, animated: true, completion: nil)
        
    }
    
    
    static func StartMainHomeByStore()
      {
        let mainStoryBoard = UIStoryboard(name: "Main", bundle: nil)
                let main_page_navigation = mainStoryBoard.instantiateViewController(withIdentifier: "MyProductCompamy") as! UIViewController
                let appDelegate = UIApplication.shared.delegate as! AppDelegate
                appDelegate.window?.rootViewController = main_page_navigation
      }
    
    
    
    
    
    
    
    
//    static func goToViewControllerByImg(identifier:String,parentVC:UIViewController,img_prod:[AllImagesProduct]?)
//       {
//       
//           let  storyboard = UIStoryboard(name: "Main", bundle: nil)
//           let destinationViewController = storyboard.instantiateViewController(withIdentifier: identifier)
//           parentVC.present(destinationViewController, animated: true, completion: nil)
//           
//       }

    
  

}
