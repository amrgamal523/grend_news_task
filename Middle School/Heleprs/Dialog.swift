//
//  Dialog.swift
//
//  Created by Amr Elsayed on 1/15/18.
//  Copyright © 2018 Amr Elsayed. All rights reserved.

import UIKit
import NVActivityIndicatorView
import PopupDialog



class Dialog: NSObject {

    
    
   static func showCircleProgressDialog() {

    //NVActivityIndicatorPresenter.sharedInstance.startAnimating(ActivityData(), nil)
    
    }
    
   static func hideCircleProgressDialog() {
        
  //  NVActivityIndicatorPresenter.sharedInstance.stopAnimating(nil)
    }
    

    
    static func logoutDialog(sender:UIViewController)
    {
        let alertController = UIAlertController(title: "هل تريد تسجيل الخروج من التطبيق ؟", message: "", preferredStyle: UIAlertController.Style.alert)
        let DestructiveAction = UIAlertAction(title: "الغاء", style: UIAlertAction.Style.default) {
            (result : UIAlertAction) -> Void in
            
        }
        
        let okAction = UIAlertAction(title: "نعم", style: UIAlertAction.Style.default) {
            (result : UIAlertAction) -> Void in

          LogHelper.logout()

        }
        alertController.addAction(DestructiveAction)
        alertController.addAction(okAction)
        sender.present(alertController, animated: true, completion: nil)
    }
    
 
    
}
