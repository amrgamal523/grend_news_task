//
//  WelcomeVcThree.swift
//  Middle School
//
//  Created by amr gamal on 9/26/21.
//  Copyright © 2021 amr gamal. All rights reserved.
//

import UIKit

class WelcomeVcThree: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func clickToNext(_ sender: Any) {
         LogHelper.goToViewController(identifier: "Login", parentVC: self)

     }

}
