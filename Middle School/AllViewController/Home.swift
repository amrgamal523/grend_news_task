//
//  Home.swift
//  Middle School
//
//  Created by amr gamal on 21/12/2022.
//  Copyright © 2022 amr gamal. All rights reserved.
//

import UIKit
import PopupDialog

class Home: UIViewController,UITableViewDataSource,UITableViewDelegate{
    @IBOutlet weak var my_table: UITableView!
    @IBOutlet weak var view_search: UIView!
    @IBOutlet weak var view_lang: UIButton!
    
    var articles:[ArticlesData]?
    var objct_articles:ArticlesData?

    var srarchfillter_articles:[ArticlesData]=Array()
    var searching_user:Bool=false
    var page_number=1
    var last_cell=false
    @IBOutlet weak var welcome_lbl: UILabel!
    
    @IBOutlet weak var search_tf: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        editViews()
        callServerToGetArticles()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        ContinerVcUser.currentTabBarStatus = .Home
        NotificationCenter.default.post(Notification(name: Notification.Name(rawValue: "MessageReceived"),object: ""))
    }
    
    
    
    func tableView(_ tableView: UITableView, willDisplay cell: UITableViewCell, forRowAt indexPath: IndexPath) {


        if ((indexPath.row + 1 < self.articles?.count ?? 0) == false) {
            if(last_cell == false)
            {
                page_number=page_number+1
                callServerToGetArticles()
            }

        }
        
        
    }
    func callServerToGetArticles()
    {
        let connection:Connection=Connection()
        connection.method = .get
        connection.startConnectionWithMapping(view: self, model: GetNewsModelList.self,url:Url.ArticlesUrl+"\(page_number)" , parameter:nil) { (result) in
            print("url",Url.ArticlesUrl+"\(self.page_number)")
            
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
                self.my_table.reloadData()
                
            }
            else if self.articles==nil
            {
                
                print(model.message)
                
                
            }
            
        }
    }
    
    
    
    @IBAction func clickToSearch(_ sender: Any) {
        
        
        srarchfillter_articles.removeAll()
        
        if (search_tf.text != "")
        {
            searching_user=true
            
            var i:Int=0
            while(i<self.articles?.count ?? 0)
            {
                if (self.articles?[i].title?.lowercased().contains(search_tf.text ?? "") ?? false) || (self.articles?[i].author?.lowercased().contains(search_tf.text ?? "") ?? false) || (self.articles?[i].description?.lowercased().contains(search_tf.text ?? "") ?? false)
                {
            srarchfillter_articles.append((self.articles?[i])!)
                }
          
                i=i+1
            }
        }
        else{
            
            searching_user=false
            
        }
        
        my_table.reloadData()
   
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        if searching_user==false
        {
            return articles?.count ?? 0
            
        }
        else{
            
            return srarchfillter_articles.count
        }
        
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell:HomeCell=tableView.dequeueReusableCell(withIdentifier: "HomeCell", for: indexPath) as! HomeCell
        cell.selectionStyle = .none
        ViewsHelper.viewDirections(cell, lang: Defaults.getLanguage())

        if searching_user==false
        {
            cell.getArticles(per: articles![indexPath.row])
        }
        else{
            
            cell.getArticles(per: srarchfillter_articles[indexPath.row])
        }
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return UITableView.automaticDimension
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if searching_user==false
        {
            objct_articles=articles![indexPath.row]
        }
        else{
            objct_articles=srarchfillter_articles[indexPath.row]

        }
        self.performSegue(withIdentifier: "hometoArticlesDetails", sender: self)
    }
    
    func editViews()
    {
        ViewsHelper.viewDirections(self.view, lang: Defaults.getLanguage())
                let lang:Int=Defaults.getLanguageIndex()
               
        welcome_lbl.text=Translations.Welcome_Back[lang]
        search_tf.placeholder=Translations.Search_article[lang]
        
        
        if((UserDefaults.standard.object(forKey: "lang") as? String ?? "ar")=="ar")
          {
            view_lang.setTitle("عربي", for: .normal)
   
          }
        else if((UserDefaults.standard.object(forKey: "lang") as? String ?? "en")=="en")
            {
            view_lang.setTitle("En", for: .normal)

            }
        else{
            view_lang.setTitle("It", for: .normal)
          }
        
        
        
        CustomView.editMybutton(theview: view_search, border: 1, radius: Float(view_search.frame.height/2), color: .lightGray)
        
        CustomView.editMybutton(theview: view_lang, border: 0, radius: Float(view_lang.frame.height/2), color: .lightGray)

    }
    
    @IBAction func clickToChooseLang(_ sender: Any) {
        
        showLangDialog(animated: true)
        
    }
    func showLangDialog(animated: Bool = true) {

        let ratingVC = ChangeLanguge(nibName: "ChangeLanguge", bundle: nil)

        let popup = PopupDialog(viewController: ratingVC, buttonAlignment: .horizontal, transitionStyle: .bounceDown, tapGestureDismissal: true){
     
        }

        popup.view.backgroundColor=UIColor.clear

        present(popup, animated: animated, completion: nil)

    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
         if segue.identifier=="hometoArticlesDetails"
                {
             let go:ArticlesDetails=segue.destination as! ArticlesDetails
               go.objct_articles=objct_articles
             
                    
                    
                }
    }
    
}
