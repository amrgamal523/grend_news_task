//
//  GetMyOrderDetailsModel.swift
//  Middle School
//
//  Created by amr gamal on 10/31/21.
//  Copyright © 2021 amr gamal. All rights reserved.
//

import UIKit
import ObjectMapper

class GetMyOrderDetailsModel: GeneralResponseModel {
    var details: OrderDetailsData?
    var items: [ItemsOrder]?

    
    override func mapping(map: Map) {
        details <- map["details"]
        items <- map["items"]



        
    }
}


class OrderDetailsData: Mappable {
    
    required init?(map: Map) {
    }
  
    var success: Bool?
    var order_id: String?
    var user_id: String?
    var user_name: String?
    var user_lat: String?
    var user_lan: String?
    var user_address: String?
     var user_phone: String?
     var notes: String?
     var total: String?
     var delivery_price: String?
    var tax: String?
      var payment_money: String?
       var payment_type: String?
       var status: String?
       var taken: String?
       var date: String?

    
    var address_id:String?
    var user_city:String?
    var special_mark:String?
    var build_num:String?


    
    init() {
        
    }
    
    func mapping(map: Map) {
        
       
        success <- map["success"]
        order_id <- map["order_id"]
        user_id <- map["user_id"]
        user_name <- map["user_name"]
        user_lat <- map["user_lat"]
        user_lan <- map["user_lan"]
        user_address <- map["user_address"]
         user_phone <- map["user_phone"]
         notes <- map["notes"]
         total <- map["total"]
         delivery_price <- map["delivery_price"]
         tax <- map["tax"]
        payment_money <- map["payment_money"]
         payment_type <- map["payment_type"]
         status <- map["status"]
         taken <- map["taken"]
         date <- map["date"]

        address_id <- map["address_id"]
         user_city <- map["user_city"]
         special_mark <- map["special_mark"]
         build_num <- map["build_num"]
         
    }
    
}

class ItemsOrder: Mappable {
    
    required init?(map: Map) {
    }
 
    var id: String?
    var name: String?
    var img: String?
    var quantity: String?
    var price: String?
    var date: String?




    
    init() {
        
    }
    
    func mapping(map: Map) {
        
       
        id <- map["id"]
        name <- map["name"]
        img <- map["img"]
        quantity <- map["quantity"]
        price <- map["price"]
        date <- map["date"]
 

         
    }
    
}
