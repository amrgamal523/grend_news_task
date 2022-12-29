//
//  GetMyCartModelList.swift
//  Middle School
//
//  Created by amr gamal on 3/28/21.
//  Copyright © 2021 amr gamal. All rights reserved.
//

import UIKit
import ObjectMapper

class GetMyCartModelList: GeneralResponseModel {
    
    var data: [MyCart]?

    override func mapping(map: Map) {
        data <- map
        
    }
}

class MyCart: Mappable {
   
    
    var success: Bool?
    var id: String?
    var product_id: String?
     var name: String?
    var price: String?
    var img: String?

   var date: String?
  var user_id: String?
  var company_id: String?

    init() {
    }

    required init?(map: Map){
        
    }

    func mapping(map: Map) {
        success <- map["success"]
        id <- map["id"]
        product_id <- map["product_id"]
    
        name <- map["name"]
        price <- map["price"]
        img <- map["img"]

        date <- map["date"]
        user_id <- map["user_id"]
        company_id <- map["company_id"]

    }
}
