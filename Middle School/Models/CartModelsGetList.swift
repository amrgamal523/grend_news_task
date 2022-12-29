//
//  CartModelsGetList.swift
//  Middle School
//
//  Created by amr gamal on 10/24/21.
//  Copyright © 2021 amr gamal. All rights reserved.
//

import UIKit
import ObjectMapper

class CartModelsGetList: GeneralResponseModel {
    
    var data: [MyCart]?

    override func mapping(map: Map) {
        data <- map
        
    }
}

class MyCart: Mappable {
  
  
    
    
    var success: Bool?

    var id: String?
    var name: String?
    var price: String?
    var img: String?
    var date: String?
    var quantity: String?
    var user_id: String?
    var description: String?





    required init?(map: Map){
        
    }

    func mapping(map: Map) {
        id <- map["id"]
        name <- map["name"]
        price <- map["price"]
        img <- map["img"]
        date <- map["date"]
        success <- map["success"]
        quantity <- map["quantity"]
        user_id <- map["user_id"]
        description <- map["description"]





    }
}
