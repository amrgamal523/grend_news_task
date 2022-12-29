//
//  SideMenu.swift
//
//  Created by Amr Elsayed on 1/15/18.
//  Copyright © 2018 Amr Elsayed. All rights reserved.


import UIKit
import AlamofireImage
import Alamofire
//import XLActionController
import Cosmos
import BFPaperButton

class SideMenu : UIViewController , UITableViewDelegate , UITableViewDataSource , UIImagePickerControllerDelegate,UINavigationControllerDelegate{
    
    var icon_image:UIImage?
    
    @IBOutlet weak var user_name: UILabel!
    
    @IBOutlet weak var user_image: UIImageView!
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var rate_number: UILabel!
    
    var titles:NSArray=NSArray()
    var icones:NSArray=NSArray()
    
    var Setting:SettingApp?

    @IBOutlet weak var user_rate: CosmosView!

    
    var storyboard_ids:NSArray=NSArray()

    override func viewDidLoad() {
        super.viewDidLoad()

        user_rate.settings.updateOnTouch=false

        user_image.clipsToBounds=true
        user_image.layer.cornerRadius=15
                
    }
    
  
    
    override func viewDidAppear(_ animated: Bool) {
         showUserName()
         showUserImage()
         
         if(Home.home != nil)
         {
             Home.home?.view.alpha=0.3
         }
     }
     
     override func viewDidDisappear(_ animated: Bool) {
         if(Home.home != nil)
         {
             Home.home?.view.alpha=1.0
         }
     }
    
  
    
    
    func showUserImage()  {
           if(Defaults.isUserLogin())
                {
        
                    ImageDownloader.downloadImage(imageView: self.user_image, url:Url.ImgUrl+Defaults.getUser().image , placeHolder: "man", showIndicator: true)

                    self.user_image.layer.masksToBounds = true
                    self.user_image.layer.cornerRadius = self.user_image.frame.width/2
                }
       
    }
    
    func showUserName()  {
        if(Defaults.isUserLogin())
        {
            self.user_name.text=Defaults.getUser().name
            callServerToGetProfile()
        }
        else
        {
            self.user_name.text=""
        }
        
       
    }
    
    func callServerToGetProfile()
      {
          let connection:Connection=Connection()
          connection.method = .get
        connection.startConnectionWithMapping(view: self, model: GetAllUserDataList.self, url:Url.users_dataUrl+"\(Defaults.getUserId())/profile" , parameter:nil) { (result) in

              let model:GetAllUserDataList=result as! GetAllUserDataList

            self.user_rate.rating=Double(model.data?.rate ?? "0") ?? 0
            self.rate_number.text="("+"(\(model.data?.rate_count ?? 0))"+")"

          }
      }
    
    
    override func viewWillAppear(_ animated: Bool) {
        
        showUserName()
        showUserImage()
        
        if Defaults.isUserLogin()==true
        {
            titles=["الرئيسية","الملف الشخصي","حجوزاتي","التنبيهات","المفضلة","عن التطبيق","الشروط والأحكام","كيفية استخدام التطبيق","تواصل معانا","تسجيل خروج",]

        }
else
        {
            titles=["الرئيسية","الملف الشخصي","حجوزاتي","التنبيهات","المفضلة","عن التطبيق","الشروط والأحكام","كيفية استخدام التطبيق","تواصل معانا","تسجيل دخول",]

        }
  
        icones=["home3","user4","calender3","bell3","heart5","list2","list","aboutapp","telegrem","logout"]
        
             storyboard_ids=["Home", "MyProfile", "MyBooking", "Notafaction", "Favorite", "AboutApp", "Terms","SwipeContainer","ConectUs"]
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
            ViewsHelper.viewDirections(cell, lang: Defaults.getLanguage())

            cell.title.text=(titles[indexPath.row] as! String)
            cell.icon.image=UIImage(named: icones[indexPath.row] as! String)

            return cell;
        }
        
        func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
            
            
            if (Defaults.isUserLogin() == false)
                              {

                                    
                                      if indexPath.row==9 {
                                    LogHelper.logout()                                                            }
                                    else  if indexPath.row==0 {
                                    //LogHelper.StartMainHome()
                                        self.dismiss(animated: true, completion: nil)
                                       }
                else if(indexPath.row == 1 || indexPath.row == 2  || indexPath.row == 3 || indexPath.row == 4  )
                    {
                Dialog.needToLoginDialog(sender: self)
                                        
                                        
                }
                      
                        else {
           let  storyboard = UIStoryboard(name: "Main", bundle: nil)
                            let destinationViewController = storyboard.instantiateViewController(withIdentifier: storyboard_ids[indexPath.row] as! String)
                    present(destinationViewController, animated: true, completion: nil)
                                                                     
                                                         }
            
    }

                                else if (Defaults.isUserLogin() == true)
                                                    {


                                                          if indexPath.row==9 {
                                                        LogHelper.logout()                                                            }
                                                        else  if indexPath.row==0 {
                                                        //LogHelper.StartMainHome()
                                                            self.dismiss(animated: true, completion: nil)
                                                           }

                                                          else{
                                                            
                        let  storyboard = UIStoryboard(name: "Main", bundle: nil)
                    let destinationViewController = storyboard.instantiateViewController(withIdentifier: storyboard_ids[indexPath.row] as! String)
                    present(destinationViewController, animated: true, completion: nil)
                                                            
                                                            
                                                        }
                 

                            }
    }

 //           else
//            {
//                if(indexPath.row == 1 || indexPath.row == 2  || indexPath.row == 3 || indexPath.row == 4  )
//                {
//            Dialog.needToLoginDialog(sender: self)
//
//
//                }else{
//
//                    let  storyboard = UIStoryboard(name: "Main", bundle: nil)
//                                      let destinationViewController = storyboard.instantiateViewController(withIdentifier: storyboard_ids[indexPath.row] as! String)
//                              present(destinationViewController, animated: true, completion: nil)
//
//
//
//                }
//
//
//            }
//    }
////                                                    else
//                                                    {
//                                                        if(indexPath.row==1 || indexPath.row==2 || indexPath.row==3 || indexPath.row==4)
//                                                        {
//                                                            Dialog.needToLoginDialog(sender: self)
//                                                        }
//                                                        else
//                                                        {
//                                                            let  storyboard = UIStoryboard(name: "Main", bundle: nil)
//                                                            let destinationViewController = storyboard.instantiateViewController(withIdentifier: storyboard_ids[indexPath.row] as! String)
//                                                            present(destinationViewController, animated: true, completion: nil)
//                                                        }
//                                                    }
//
//                                               }
//                                    
//                              
////                               }
//                               else{
//
//
                 
   
    
    func callServerToGetSetting()
                {
//                    let connection:Connection=Connection()
//                    connection.method = .get
//                connection.startConnectionWithMapping(view: self, model: GetSettIngModel.self, url:Url.ِSettingUrl , parameter:nil) { (result) in
//                        
//                        let model:GetSettIngModel=result as! GetSettIngModel
//                       self.Setting=model.Setting
//                   
//                        if(Defaults.checkResponse(response: model) == true)
//                        {
//
//                        }
//                        else{
//                  
//                          //      AlertMessages.showMessage(title: "", body: model.message, theme: .error)
//                              print(model.message)
//                   
//
//                   }
//                            
//                        
//                        
//                    }
                }

    

    
    
    
    
    

    
      func openLink(link:String)
      {
          if let url = URL(string: link) {
              if UIApplication.shared.canOpenURL(url) {
                  if #available(iOS 10.0, *) {
                      UIApplication.shared.open(url, options: [:], completionHandler: nil)
                  } else {
                      UIApplication.shared.openURL(url)
                  }
              }
          }
      }
    

    @IBAction func clickToProfile(_ sender: Any) {
        if (Defaults.isUserLogin() == false)
              {
                  Dialog.needToLoginDialog(sender: self)
              }
              else
              {
                  LogHelper.goToViewController(identifier: "MyProfile", parentVC: self)

              }
    }
    

    
    
    }

