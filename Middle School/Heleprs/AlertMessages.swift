//
//  AlertMessages.swift
//
//  Created by Amr Elsayed on 1/15/18.
//  Copyright © 2018 Amr Elsayed. All rights reserved.

import UIKit
import CDAlertView

class AlertMessages: NSObject {


   
        static func showMessage(title:String , body:String  , theme: CDAlertViewType)
        {
            let alert = CDAlertView(title: title, message: body, type: theme)
            alert.hideAnimations = { (center, transform, alpha) in
                transform = CGAffineTransform(scaleX: 3, y: 3)
                alpha = 0
            }
            alert.hideAnimationDuration = 0.88
            alert.autoHideTime = 1.5

            alert.show()
            

        }

}
