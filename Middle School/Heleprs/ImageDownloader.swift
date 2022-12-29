//
//  ImageDownloader.swift
//
//  Created by Amr Elsayed on 1/15/18.
//  Copyright © 2018 Amr Elsayed. All rights reserved.


import UIKit
import SDWebImage

class ImageDownloader: NSObject {
    
    static func downloadImage(imageView:UIImageView , url:String , placeHolder:String , showIndicator:Bool)  {
//        imageView.sd_addActivityIndicator()
//        imageView.sd_setIndicatorStyle(.gray)
   //     imageView.sd_setImage(with: URL(string: url), placeholderImage: UIImage(named: "forqan")  )

        let urlwithPercentEscapes = url.addingPercentEncoding( withAllowedCharacters: NSCharacterSet.urlQueryAllowed)

            imageView.sd_setImage(with: URL(string: urlwithPercentEscapes ?? ""), placeholderImage: UIImage(named: placeHolder)  )
        
    }

}
