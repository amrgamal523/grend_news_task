//
//  GetCategoriesChildModelList.swift
//  Middle School
//
//  Created by amr gamal on 11/24/20.
//  Copyright © 2020 amr gamal. All rights reserved.
//

import UIKit
import ObjectMapper


class GetCategoriesChildModelList: GeneralResponseModel {
    var data: DataCategories?

    
    override func mapping(map: Map) {
        data <- map["data"]
        status <- map["status"]


        
    }
}


class DataCategories: Mappable {
    
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
    
    


    var categories: [ShowCategories]?

    

    
    
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
            type <- map["type"]
          
        
            categories <- map["children"]

   
         
    }
    
}

class ShowCategories: Mappable {
    
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
    var depth: Int?
    
    var is_selected: Bool?




    

    
    
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
               type <- map["type"]
             
           
               depth <- map["depth"]
          
         
    }
    
}
