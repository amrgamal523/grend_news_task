//
//  HeadLinesCollectionCell.swift
//  Middle School
//
//  Created by amr gamal on 28/12/2022.
//  Copyright © 2022 amr gamal. All rights reserved.
//

import UIKit

class HeadLinesCollectionCell: UICollectionViewCell {
   
    @IBOutlet weak var img_new: UIImageView!
    @IBOutlet weak var title: UILabel!
    @IBOutlet weak var author: UILabel!
   
    func getArticles(per:ArticlesData)
    {
        
        title.text=per.title
        self.author.text=(per.author ?? "")
        ImageDownloader.downloadImage(imageView: self.img_new, url:(per.urlToImage ?? "logo") , placeHolder: "logo", showIndicator: true)
   
        
    }
    
    
}
