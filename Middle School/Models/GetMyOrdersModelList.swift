//
//  GetMyOrdersModelList.swift
//  Middle School
//
//  Created by amr gamal on 10/24/21.
//  Copyright © 2021 amr gamal. All rights reserved.
//

import UIKit
import ObjectMapper

class GetMyOrdersModelList:  GeneralResponseModel {
    
    var data: [AllMyOrders]?

    override func mapping(map: Map) {
        data <- map
        
    }
}

class AllMyOrders: Mappable {
    


    var success:Bool?
    var id:String?
    var user_id:String?

    var address_id:String?
    var user_city:String?
    var special_mark:String?
    var build_num:String?

    
    var user_name:String?
    var user_lat:String?
    var user_lan:String?
    var user_address:String?
    var user_phone:String?
    var notes:String?
    var status:String?
    var date:String?
    var company_id:String?
    var taken:String?
    var total:String?
    var tax:String?
    var payment_money:String?
    var delivery_price:String?




   

    required init?(map: Map){
        
    }

    func mapping(map: Map) {
        success <- map["success"]
        id <- map["id"]
        user_id <- map["user_id"]

        address_id <- map["address_id"]
        user_city <- map["user_city"]
        special_mark <- map["special_mark"]
        build_num <- map["build_num"]
        
        user_name <- map["user_name"]
        user_lat <- map["user_lat"]
        user_lan <- map["user_lan"]
        user_address <- map["user_address"]
        user_phone <- map["user_phone"]
        notes <- map["notes"]
        status <- map["status"]
        date <- map["date"]
        company_id <- map["company_id"]
        taken <- map["taken"]
        total <- map["total"]

        tax <- map["tax"]
            payment_money <- map["payment_money"]
            delivery_price <- map["delivery_price"]




    }
}
