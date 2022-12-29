//
//  GetAllShopsProducts.swift
//  Middle School
//
//  Created by amr gamal on 3/23/21.
//  Copyright © 2021 amr gamal. All rights reserved.
//

import UIKit
import ObjectMapper

class GetAllShopsProducts: GeneralResponseModel {
    
    var data: [ShopsProducts]?


    override func mapping(map: Map) {
        data <- map

        
    }
}

class ShopsProducts: Mappable {
    

    

    var success:Bool?
    var id:String?
    var name:String?
    var price:String?
     var img:String?
    var description:String?
     var category_id:String?
    var category_name:String?
     var company_id:String?
    var company_name:String?
     var date_reg:String?

    
    
    
   

   

    required init?(map: Map){
        
    }

    func mapping(map: Map) {
        success <- map["success"]
        id <- map["id"]
        name <- map["name"]
        price <- map["price"]
        img <- map["img"]
        description <- map["description"]
        
        category_id <- map["category_id"]
        category_name <- map["category_name"]
        company_id <- map["company_id"]
        company_name <- map["company_name"]
        date_reg <- map["date_reg"]
 

    }
    
}

