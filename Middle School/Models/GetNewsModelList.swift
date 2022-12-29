//
//  GetNewsModelList.swift
//  Middle School
//
//  Created by amr gamal on 27/12/2022.
//  Copyright © 2022 amr gamal. All rights reserved.
//

import UIKit
import ObjectMapper


class GetNewsModelList: GeneralResponseModel {
    var articles:[ArticlesData]?
    
    override func mapping(map: Map) {
        articles <- map["articles"]
        status <- map["status"]

    }
}


    class ArticlesData: Mappable
    {
       
        
        var author: String?
        var title: String?
        var description: String?
        var url: String?
        var urlToImage: String?
        var publishedAt: String?
        var content: String?

        init() {
            
        }
        required init?(map: Map) {
            
        }
        
        func mapping(map: Map) {
            author <- map["author"]
            title <- map["title"]
            description <- map["description"]
            url <- map["url"]
            urlToImage <- map["urlToImage"]
            publishedAt <- map["publishedAt"]
            content <- map["content"]

          
         
            
     

        }
    
        
    }
