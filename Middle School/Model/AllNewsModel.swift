//
//  AllNewsModel.swift
//  Middle School
//
//  Created by amr gamal on 2/8/20.
//  Copyright © 2020 amr gamal. All rights reserved.
//

import UIKit
import ObjectMapper

class AllNewsModel:  GeneralResponseModel {
    
    var news: [ShowNews]?
    
    override func mapping(map: Map) {
        news <- map["news"]
        message <- map["message"]
    }
}

class ShowNews: Mappable {
    
    required init?(map: Map) {
    }
    
    var news_id: String?
    var news_title: String?
    var news_content: String?
    var news_photo: String?
    var news_date: String?
    var news_visits: String?
    
    
    func mapping(map: Map) {
        
        news_id <- map["news_id"]
        news_title <- map["news_title"]
        news_content <- map["news_content"]
        news_photo <- map["news_photo"]
        news_date <- map["news_date"]
        news_visits <- map["news_visits"]
        
}
}
