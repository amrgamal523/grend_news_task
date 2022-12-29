//
//  SideMenuHelper.swift
//
//  Created by Amr Elsayed on 1/15/18.
//  Copyright © 2018 Amr Elsayed. All rights reserved.


import UIKit

class SideMenuHelper: NSObject {

    
    static func setupMenu(view:UIViewController, btn_reveal:UIBarButtonItem)
    {
        if(view.revealViewController() != nil)
        {
            btn_reveal.target = view.revealViewController();
//            if(Defaults.getLanguage()=="ar")
//            {
                btn_reveal.action = #selector(SWRevealViewController.rightRevealToggle(_:));

//            }
//            else
//            {
//                btn_reveal.action = #selector(SWRevealViewController.revealToggle(_:));
//
//            }
            
        }
    }
}
