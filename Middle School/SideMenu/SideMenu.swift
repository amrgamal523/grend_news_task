//
//  SideMenu.swift
//
//  Created by Amr Elsayed on 1/15/18.
//  Copyright © 2018 Amr Elsayed. All rights reserved.


import UIKit
import AlamofireImage
import Alamofire
//import XLActionController


class SideMenu : UIViewController , UITableViewDelegate , UITableViewDataSource , UIImagePickerControllerDelegate,UINavigationControllerDelegate{
    
    var icon_image:UIImage?
    
    @IBOutlet weak var user_name: UILabel!
    @IBOutlet weak var user_type: UILabel!
    
    @IBOutlet weak var user_image: UIImageView!
    var lang:Int=0
    @IBOutlet weak var tableView: UITableView!
    
    var titles:NSArray=NSArray()
    var storyboard_ids:NSArray=NSArray()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        user_image.clipsToBounds=true
        user_image.layer.cornerRadius=15
                
    }
    
    override func viewDidAppear(_ animated: Bool) {
        showUserName()
        showUserImage()
    }
    
    func showUserImage()  {
        
       
    }
    
    func showUserName()  {
        
       
    }
    
    
    override func viewWillAppear(_ animated: Bool) {
        
        showUserName()
        showUserImage()
        
       
        titles=["الرئيسية","الاخبار","الفعاليات"]
            
            storyboard_ids=["main_nav","news","event"]

        

        
        self.tableView.reloadData()
    }
    
    
    //MARK: - Table View Data Source
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1;
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return titles.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! SideMenuCell
        cell.title.text=(titles[indexPath.row] as! String)
        return cell;
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        
        
                
                let  storyboard = UIStoryboard(name: "Main", bundle: nil)
                let destinationViewController = storyboard.instantiateViewController(withIdentifier: storyboard_ids[indexPath.row] as! String)
                self.revealViewController()?.frontViewController.present(destinationViewController, animated: true, completion: nil)
                
            
            
            self.revealViewController().rightRevealToggle(animated: true)
    
        

        
    }
    

}

