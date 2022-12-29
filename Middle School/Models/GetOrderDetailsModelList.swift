//
//  GetOrderDetailsModelList.swift
//  Middle School
//
//  Created by amr gamal on 3/27/21.
//  Copyright © 2021 amr gamal. All rights reserved.
//

import UIKit
import ObjectMapper

class GetOrderDetailsModelList:  GeneralResponseModel {
    
    var data: [AllOrderDetail]?

    override func mapping(map: Map) {
        data <- map
        
    }
}

class AllOrderDetail: Mappable {
   

    
    var success: Bool?
    var id: String?
    var product_id: String?
     var name: String?
    var price: String?
    var img: String?

    var driver_id: String?
     var delivery_price: String?
    var date: String?
    var user_id: String?

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
        driver_id <- map["driver_id"]
        delivery_price <- map["delivery_price"]
        date <- map["date"]

        user_id <- map["user_id"]


    }
}
