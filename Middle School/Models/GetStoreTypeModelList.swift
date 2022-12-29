//
//  GetStoreTypeModelList.swift
//  Middle School
//
//  Created by amr gamal on 11/18/20.
//  Copyright © 2020 amr gamal. All rights reserved.
//

import UIKit
import ObjectMapper


class GetStoreTypeModelList: GeneralResponseModel {
    var data: [TypeStores]?
    
    override func mapping(map: Map) {
        data <- map["data"]
        status <- map["status"]

        
    }
}


class TypeStores: Mappable {
    
    required init?(map: Map) {
    }

    
    var id: Int?
    var name: String?
    var image: String?
    var type: String?
    var is_selected:Bool?
 
    
    
    
    init() {
        
    }
    
    func mapping(map: Map) {
        
       
        id <- map["id"]
        name <- map["title"]
        image <- map["image"]
        type <- map["type"]
        

        
    }
    
}


