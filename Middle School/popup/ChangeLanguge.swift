//
//  ChangeLanguge.swift
//  Middle School
//
//  Created by amr gamal on 10/24/21.
//  Copyright © 2021 amr gamal. All rights reserved.
//

import UIKit
import M13Checkbox

class ChangeLanguge: UIViewController {

    @IBOutlet weak var en: M13Checkbox!
    @IBOutlet weak var arabic: M13Checkbox!
    @IBOutlet weak var Italiano: M13Checkbox!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    if((UserDefaults.standard.object(forKey: "lang") as? String ?? "ar")=="ar")
      {
        arabic.checkState = .checked
        en.checkState = .unchecked
        Italiano.checkState = .unchecked


          
      }
    else if((UserDefaults.standard.object(forKey: "lang") as? String ?? "en")=="en")
        {
          arabic.checkState = .unchecked
          en.checkState = .checked
          Italiano.checkState = .unchecked
 
        }
    else{
       arabic.checkState = .unchecked
        Italiano.checkState = .checked

       en.checkState = .unchecked
          
      }

        
    }

    
    @IBAction func clickToChooseLang(_ sender: Any) {
         en.checkState = .unchecked

    UserDefaults.standard.setValue("ar", forKey: "lang")


    LogHelper.goToViewController(identifier: "Home", parentVC: self)
        
    }
    
    
    
    @IBAction func clickToChooseEn(_ sender: Any) {
        arabic.checkState = .unchecked

    UserDefaults.standard.setValue("en", forKey: "lang")


       LogHelper.goToViewController(identifier: "Home", parentVC: self)
    }
    

    
    @IBAction func clickToChooseIt(_ sender: Any) {
        arabic.checkState = .unchecked

    UserDefaults.standard.setValue("it", forKey: "lang")


       LogHelper.goToViewController(identifier: "Home", parentVC: self)
    }
    
    
    @IBAction func back(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    

}
