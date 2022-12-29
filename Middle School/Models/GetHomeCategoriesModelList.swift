//
//  GetHomeCategoriesModelList.swift
//  Middle School
//
//  Created by amr gamal on 11/18/20.
//  Copyright © 2020 amr gamal. All rights reserved.
//

import UIKit
import ObjectMapper


class GetHomeCategoriesModelList: GeneralResponseModel {
    var data: [AllCategories]?
    
    override func mapping(map: Map) {
        data <- map["data"]
        status <- map["status"]

        
    }
}


class AllCategories: Mappable {
    
    required init?(map: Map) {
    }
    
   
    
    var id: Int?
    var title_general: String?
    var parent_id: Int?
    var title: String?
    var alias: String?
    var image: String?
    var type: String?
    var is_active: Int?
 
    
    
    
    init() {
        
    }
    
    func mapping(map: Map) {
        
       
        id <- map["id"]
        title_general <- map["title_general"]
        parent_id <- map["parent_id"]
        title <- map["title"]
        alias <- map["alias"]
        image <- map["image"]
        type <- map["type"]
        is_active <- map["is_active"]
        

        
    }
    
}


