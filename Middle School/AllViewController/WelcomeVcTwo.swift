//
//  WelcomeVcTwo.swift
//  Middle School
//
//  Created by amr gamal on 9/26/21.
//  Copyright © 2021 amr gamal. All rights reserved.
//

import UIKit

class WelcomeVcTwo: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    
    @IBAction func clickToNext(_ sender: Any) {
        LogHelper.goToViewController(identifier: "WelcomeVcThree", parentVC: self)

    }
}
