//
//  PersonCertified.swift
//  Middle School
//
//  Created by amr gamal on 1/21/21.
//  Copyright © 2021 amr gamal. All rights reserved.
//

import UIKit
import SideMenu

class PersonCertified: UIViewController ,UITableViewDelegate,UITableViewDataSource {

    @IBOutlet weak var nav_bar: UINavigationBar!
    
    @IBOutlet weak var my_table: UITableView!
    
    var menu:SideMenuNavigationController?

    override func viewDidLoad() {
        super.viewDidLoad()
        nav_bar.transparentNavigationBar()
         editViews()

    }
    
  func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
      return 4
  }
  
  func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    let cell:PersonCertifiedCell=tableView.dequeueReusableCell(withIdentifier: "PersonCertifiedCell", for: indexPath) as! PersonCertifiedCell
    cell.selectionStyle = .none
    return cell
  }
    
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        LogHelper.goToViewController(identifier: "InformationPersonCertified", parentVC: self)
    }
  
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 76
    }
    
    
    
    
     func editViews()
      {
        
        menu = storyboard!.instantiateViewController(withIdentifier: "RightMenu") as! SideMenuNavigationController
                   menu?.presentationStyle = .menuSlideIn
             SideMenuManager.default.addPanGestureToPresent(toView: self.view)
            SideMenuManager.default.addScreenEdgePanGesturesToPresent(toView: self.view)
                        menu?.statusBarEndAlpha = 0
        
        
    }

@IBAction func clickToFillter(_ sender: Any) {
            LogHelper.goToViewController(identifier: " Sort", parentVC: self)

        }
    
    
    @IBAction func clickToShowOffer(_ sender: Any) {
        LogHelper.goToViewController(identifier: "NewOffer", parentVC: self)
    }
            
    
    @IBAction func showInformationCenter(_ sender: Any) {
        
        
        let  storyboard = UIStoryboard(name: "Main", bundle: nil)
                            let destinationViewController = storyboard.instantiateViewController(withIdentifier: "Home") as! Home
                         destinationViewController.parmc_vc=2
                            self.present(destinationViewController, animated: true, completion: nil)    }
    
    @IBAction func clickToOpenSideMenu(_ sender: Any) {
        present(menu!, animated: true, completion: nil)

    }
    

               


}
