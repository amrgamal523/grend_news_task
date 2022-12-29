//
//  ArticlesDetailsCell.swift
//  Middle School
//
//  Created by amr gamal on 28/12/2022.
//  Copyright © 2022 amr gamal. All rights reserved.
//

import UIKit

class ArticlesDetailsCell: UITableViewCell {
    @IBOutlet weak var main_view: UIView!
    @IBOutlet weak var img_new: UIImageView!
    @IBOutlet weak var title: UILabel!
    @IBOutlet weak var the_description: UILabel!
    @IBOutlet weak var author_date: UILabel!
    
    var main_vc:ArticlesDetails=ArticlesDetails()
    
    func getArticles()
    {
        
        title.text=main_vc.objct_articles?.title
        the_description.text=main_vc.objct_articles?.description
        
        
        let the_puplished:[String]=(main_vc.objct_articles?.publishedAt?.components(separatedBy: "T")) ?? Array()
        
        
        if(the_puplished.count>0)
        {
            self.author_date.text=(main_vc.objct_articles?.author ?? "")+" - "+the_puplished[0]+"  "+the_puplished[1]
            
        }
     
        ImageDownloader.downloadImage(imageView: self.img_new, url:(main_vc.objct_articles?.urlToImage ?? "logo") , placeHolder: "logo", showIndicator: true)
        
        
        
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
