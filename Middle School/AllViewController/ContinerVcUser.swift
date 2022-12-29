//
//  ContinerVcUser.swift
//  Middle School
//
//  Created by amr gamal on 6/19/22.
//  Copyright © 2022 amr gamal. All rights reserved.
//

import UIKit
import BFPaperButton


class ContinerVcUser: UIViewController {
      enum TabBarStatus {
            case Home
            case Lines
            
            
        }

        
        static var currentTabBarStatus:TabBarStatus=TabBarStatus.Home
        
    @IBOutlet weak var icon_1: UIImageView!
    
    @IBOutlet weak var icon_2: UIImageView!
    
                
    @IBOutlet weak var home_lbl: UILabel!
    @IBOutlet weak var head_lbl: UILabel!
    

        
        override func viewDidLoad() {
            super.viewDidLoad()
            
            
            ViewsHelper.viewDirections(self.view, lang: Defaults.getLanguage())
                          let lang:Int=Defaults.getLanguageIndex()
                   
            home_lbl.text=Translations.Home[lang]
            head_lbl.text=Translations.Head_Lines[lang]

            
   
            icon_1.image = icon_1.image?.withRenderingMode(UIImage.RenderingMode.alwaysTemplate)
            
            icon_2.image = icon_2.image?.withRenderingMode(UIImage.RenderingMode.alwaysTemplate)

            
            
            updateStatus()
            
            
            NotificationCenter.default.addObserver(self, selector: #selector(ContinerVcUser.updateStatus), name: NSNotification.Name(rawValue: "MessageReceived"), object: nil)
            
            
            
            
        }
        
    

    
    
        
        @objc  func updateStatus()  {
            
            if(ContinerVcUser.currentTabBarStatus == .Home)
            {
                icon_1.tintColor=UIColor.blue
                home_lbl.textColor=UIColor.blue
                icon_2.tintColor=UIColor.lightGray
                head_lbl.textColor=UIColor.lightGray

                
                
            }
            
            else if(ContinerVcUser.currentTabBarStatus == .Lines)
            {
                icon_2.tintColor=UIColor.blue
                head_lbl.textColor=UIColor.blue
                icon_1.tintColor=UIColor.lightGray
                home_lbl.textColor=UIColor.lightGray


                
            }
            
       
            
        }
        
        
        
        
        @IBAction func clickToHome(_ sender: Any) {
       
                LogHelper.StartMainHome()
                
            }
            
            
    @IBAction func clickToHeadLines(_ sender: Any) {
        
        LogHelper.goToViewController(identifier: "HeadLines", parentVC: self)
        

    }
 
        
        
        
        
        
    }

