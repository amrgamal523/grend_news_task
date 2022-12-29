//
//  WelcomeVcOne.swift
//  Middle School
//
//  Created by amr gamal on 9/26/21.
//  Copyright © 2021 amr gamal. All rights reserved.
//

import UIKit
import BFPaperButton

class WelcomeVcOne: UIViewController {
    @IBOutlet weak var next_btn: BFPaperButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    
    @IBAction func clickToNext(_ sender: Any) {
        LogHelper.goToViewController(identifier: "WelcomeVcTwo", parentVC: self)

    }
   
}
