//
//  HeadLines.swift
//  Middle School
//
//  Created by amr gamal on 28/12/2022.
//  Copyright © 2022 amr gamal. All rights reserved.
//

import UIKit

class HeadLines: UIViewController,UICollectionViewDelegate,UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {

     @IBOutlet weak var my_collection: UICollectionView!
    var articles:[ArticlesData]?
    var objct_articles:ArticlesData?
    var page_number=1
    var last_cell=false
     override func viewDidLoad() {
         super.viewDidLoad()
    
         callServerToGetHeadLines()
     }
    override func viewWillAppear(_ animated: Bool) {
        ContinerVcUser.currentTabBarStatus = .Lines
        NotificationCenter.default.post(Notification(name: Notification.Name(rawValue: "MessageReceived"),object: ""))
    }
    
    func callServerToGetHeadLines()
    {
        let connection:Connection=Connection()
        connection.method = .get
        connection.startConnectionWithMapping(view: self, model: GetNewsModelList.self,url:Url.HeadLinesUrl+"\(page_number)" , parameter:nil) { (result) in
            print("url",Url.HeadLinesUrl+"\(self.page_number)")
            
            let model:GetNewsModelList=result as! GetNewsModelList
            
            
            if(Defaults.checkResponse(response: model) == true)
            {
                if(self.page_number==1)
                {
                    self.articles=model.articles
                    self.last_cell=false
                }
                else
                {
                    if(model.articles != nil)
                    {
                        for item in model.articles ?? Array()
                        {
                            self.articles?.append(item)
                        }
                        
                        
                        //back
                        //                        if self.page_number > model.pages?.lastPage ?? 0{
                        //                            self.last_cell=true
                        //
                        //
                        //                        }
                        
                        
                    }
                    else
                    {
                        self.last_cell=true
                    }
                    
                    
                }
                self.my_collection.reloadData()
                
            }
            else if self.articles==nil
            {
                
                print(model.message)
                
                
            }
            
        }
    }
    
    
    
     
     func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
   
         return articles?.count ?? 0
         }
   


     func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell:HeadLinesCollectionCell=collectionView.dequeueReusableCell(withReuseIdentifier: "HeadLinesCollectionCell", for: indexPath) as! HeadLinesCollectionCell
         cell.getArticles(per: articles![indexPath.row])

             return cell
             
         }

     
     func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
   
         let sectionInset = (collectionViewLayout as! UICollectionViewFlowLayout).sectionInset

         // Here you can set dynamic height for the individual cell according to your content size.
                 let referenceHeight: CGFloat = 170 // Approximate height of your cell

                 let referenceWidth = collectionView.safeAreaLayoutGuide.layoutFrame.width
                     - sectionInset.left
                     - sectionInset.right
                     - collectionView.contentInset.left
                     - collectionView.contentInset.right

                 return CGSize(width: referenceHeight, height: referenceWidth)
       
          
      }
     func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {

         objct_articles=articles![indexPath.row]
         self.performSegue(withIdentifier: "headlinetoweb", sender: self)
     }


     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
         if segue.identifier=="headlinetoweb"
         {
             let go:WebViewVC=segue.destination as!WebViewVC
             go.url_art=objct_articles?.url ?? ""


         }
     }

 }
