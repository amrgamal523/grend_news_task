//
//  GetProductOfCategoriesModelList.swift
//  Middle School
//
//  Created by amr gamal on 3/29/21.
//  Copyright © 2021 amr gamal. All rights reserved.
//

import UIKit
import ObjectMapper


class GetProductOfCategoriesModelList: GeneralResponseModel {
    
    var data: [ProductOfCat]?

    override func mapping(map: Map) {
        data <- map
        
    }
}

class ProductOfCat: Mappable {
   
    
    
    
    
    var success: Bool?
    var id: String?
    var name: String?
     var email: String?
    var phone: String?
    var lat: String?

   var lan: String?
  var address: String?
  var identifiy_name: String?
    
  var identifiy_img: String?
 var shop_img: String?
 var category_id: String?
  var category_name: String?
 var type: String?
 var status: String?
    var date_reg: String?


    init() {
    }

    required init?(map: Map){
        
    }

    func mapping(map: Map) {
        success <- map["success"]
        id <- map["id"]
        email <- map["email"]
    
        name <- map["name"]
        phone <- map["phone"]
        lat <- map["lat"]

        lan <- map["lan"]
        address <- map["address"]
        identifiy_name <- map["identifiy_name"]
        identifiy_img <- map["identifiy_img"]
        shop_img <- map["shop_img"]
        category_id <- map["category_id"]
        
        category_name <- map["category_name"]
        type <- map["type"]
        status <- map["status"]
        date_reg <- map["date_reg"]


    }
}
