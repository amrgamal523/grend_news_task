//
//  GetAllSettingModelList.swift
//  Middle School
//
//  Created by amr gamal on 10/30/21.
//  Copyright © 2021 amr gamal. All rights reserved.
//

import UIKit
import ObjectMapper

class GetAllSettingModelList: GeneralResponseModel {
    
    var settings: [SettingsApp]?
    var slider: [AllSlider]?

    
    override func mapping(map: Map) {
        settings <- map["settings"]
        slider <- map["slider"]

    }
}


class SettingsApp: Mappable {
    
    required init?(map: Map) {
    }
 
    var success: Bool?
    var id: String?
    var name: String?
    var description: String?
    
    func mapping(map: Map) {
        
        id <- map["id"]
        success <- map["success"]
        name <- map["name"]
        description <- map["description"]
        
        
    }
}

class AllSlider: Mappable {
    
    required init?(map: Map) {
    }
 
   
    
    
    var success: Bool?
    var id: String?
    var product_id: String?
    var img: String?
    
    func mapping(map: Map) {
        
        id <- map["id"]
        success <- map["success"]
        product_id <- map["product_id"]
        img <- map["img"]
        
        
    }
}

class TheBestProduct: Mappable {
    
    required init?(map: Map) {
    }
 
   
    var products: [AllProduct]?

    
    
    
    func mapping(map: Map) {
        
        products <- map["products"]
        
        
        
    }
}
