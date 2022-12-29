//
//  SuccesOrder.swift
//  Middle School
//
//  Created by amr gamal on 1/22/21.
//  Copyright © 2021 amr gamal. All rights reserved.
//

import UIKit

class SuccesOrder: UIViewController {

@IBOutlet weak var nav_bar: UINavigationBar!
  override func viewDidLoad() {
  super.viewDidLoad()
        nav_bar.transparentNavigationBar()
}
            
            
@IBAction func clickToSeeDetailsBooking(_ sender: Any) {
    LogHelper.goToViewController(identifier: "MyBooking", parentVC: self)

    }
            
            
           
@IBAction func back(_ sender: Any) {
    LogHelper.StartMainHome()
    
    }
            

}

