//
//  GetItemsCatigoriesModelList.swift
//  Middle School
//
//  Created by amr gamal on 11/24/20.
//  Copyright © 2020 amr gamal. All rights reserved.
//

import UIKit
import ObjectMapper


class GetItemsCatigoriesModelList: GeneralResponseModel {
    var data: [ItemCat]?

    
    override func mapping(map: Map) {
        data <- map["data"]
        status <- map["status"]


        
    }
}


class ItemCat: Mappable {
    
    required init?(map: Map) {
    }

    
    var id: Int?
    var title: String?
    var image: String?
    var image_from_gallary:UIImage?
    var quanity=1
  
    var category_id: Int?

    
    
    init() {
        
    }
    
    func mapping(map: Map) {
        
       
        id <- map["id"]
        title <- map["title"]
        image <- map["image"]
      category_id <- map["category_id"]

    }
    
}
