//
//  ArticlesDetails.swift
//  Middle School
//
//  Created by amr gamal on 28/12/2022.
//  Copyright © 2022 amr gamal. All rights reserved.
//

import UIKit

class ArticlesDetails: UIViewController ,UITableViewDataSource,UITableViewDelegate{
    @IBOutlet weak var my_table: UITableView!
    
    var objct_articles:ArticlesData?

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
          return 1
    
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell:ArticlesDetailsCell=tableView.dequeueReusableCell(withIdentifier: "ArticlesDetailsCell", for: indexPath) as! ArticlesDetailsCell
        cell.selectionStyle = .none
        cell.main_vc=self
        cell.getArticles()
       
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return UITableView.automaticDimension
    }
    
    
    @IBAction func back(_ sender: Any) {
        self.dismiss(animated: true)
    }
    
    
}
