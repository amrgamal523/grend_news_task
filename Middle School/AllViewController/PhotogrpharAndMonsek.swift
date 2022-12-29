//
//  PhotogrpharAndMonsek.swift
//  Middle School
//
//  Created by amr gamal on 3/17/21.
//  Copyright © 2021 amr gamal. All rights reserved.
//

import UIKit

class PhotogrpharAndMonsek: UIViewController ,UITableViewDataSource,UITableViewDelegate {

    var array_image=["photegrphar","monsek"]
    var taype_order=1
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return array_image.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell:PhotogrpharAndMonsekCell=tableView.dequeueReusableCell(withIdentifier: "PhotogrpharAndMonsekCell", for: indexPath) as! PhotogrpharAndMonsekCell
        cell.selectionStyle = .none
        cell.img.image=UIImage(named: array_image[indexPath.row])
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 181
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if indexPath.row==0
        {
            taype_order=1
            
        }else
        {
        taype_order=2

            
        }
        
    self.performSegue(withIdentifier: "photografertomakeorder", sender: self)
    }
    
    
    @IBAction func clickToCart(_ sender: Any) {
        LogHelper.goToViewController(identifier: "Cart", parentVC: self)

        
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
                    if(segue.identifier == "photografertomakeorder")
                      {
                    let vc:MakeOrder=segue.destination as! MakeOrder
                          vc.parmc_vc=1
                        vc.taype_order=taype_order
                        

                      }
        
       }
    
    
 
    @IBAction func back(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    

}
