//
//  AlertMessages.swift
//
//  Created by Amr Elsayed on 1/15/18.
//  Copyright © 2018 Amr Elsayed. All rights reserved.

import UIKit
import SwiftMessages

class AlertMessages: NSObject {


    static func showMessage(title:String , body:String , theme:Theme)
    {
        let view = MessageView.viewFromNib(layout: .cardView)
        view.configureTheme(theme)
        view.configureDropShadow()
        
        view.configureContent(title: title, body: body )
        view.button?.isHidden=false
        view.button?.setTitle("تم", for: .normal)
        view.buttonTapHandler = { _ in SwiftMessages.hide() }
        var config = SwiftMessages.defaultConfig
        config.duration = .forever
        config.presentationStyle = .center
        SwiftMessages.show(config: config, view: view)

    }

}
