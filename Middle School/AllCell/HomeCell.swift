//
//  HomeCell.swift
//  Middle School
//
//  Created by amr gamal on 21/12/2022.
//  Copyright © 2022 amr gamal. All rights reserved.
//

import UIKit

class HomeCell: UITableViewCell {
    @IBOutlet weak var main_view: UIView!
    @IBOutlet weak var img_new: UIImageView!
    @IBOutlet weak var title: UILabel!
    @IBOutlet weak var the_description: UILabel!
    @IBOutlet weak var author_date: UILabel!
    
    func getArticles(per:ArticlesData)
    {
        
        title.text=per.title
        the_description.text=per.description
        
        
        let the_puplished:[String]=(per.publishedAt?.components(separatedBy: "T")) ?? Array()
        
        
        if(the_puplished.count>0)
        {
            self.author_date.text=(per.author ?? "")+" - "+the_puplished[0]+"  "+the_puplished[1]
            
        }
        
        
        
        ImageDownloader.downloadImage(imageView: self.img_new, url:(per.urlToImage ?? "logo") , placeHolder: "logo", showIndicator: true)
        
        
        
        CustomView.editMybutton(theview: main_view, border: 0, radius: 6, color: .lightGray)
        
        CustomView.editMybutton(theview: img_new, border: 0, radius: 6, color: .lightGray)
        
    }
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        // Configure the view for the selected state
    }
    
}
