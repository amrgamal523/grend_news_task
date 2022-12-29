//
//  GetAllOrderStatusModelList.swift
//  Middle School
//
//  Created by amr gamal on 3/27/21.
//  Copyright © 2021 amr gamal. All rights reserved.
//

import UIKit
import ObjectMapper

class GetAllOrderStatusModelList: GeneralResponseModel {
    
    var data: [AllOrderStatus]?

    override func mapping(map: Map) {
        data <- map
        
    }
}

class AllOrderStatus: Mappable {


    
    var success: Bool?
    var id: String?
    var user_id: String?
     var user_name: String?
    var user_lat: String?
    var user_lan: String?
    var user_address: String?
    var user_phone: String?
     var notes: String?
    var total: String?
    var company_id: String?
    
    var driver_id: String?
    var status: String?
     var delivery_price: String?
    var taken: String?
    var date: String?



    init() {
    }

    required init?(map: Map){
        
    }

    func mapping(map: Map) {
        success <- map["success"]
        id <- map["id"]
        user_id <- map["user_id"]
    
        user_name <- map["user_name"]
        user_lat <- map["user_lat"]
        user_lan <- map["user_lan"]
         user_address <- map["user_address"]
        user_phone <- map["user_phone"]
        
       notes <- map["notes"]
       total <- map["total"]
      company_id <- map["company_id"]
    
        driver_id <- map["driver_id"]
         status <- map["status"]
        delivery_price <- map["delivery_price"]
        taken <- map["taken"]
           date <- map["date"]

    }
}
