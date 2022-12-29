//
//  GetAllDetailsOrderModelList.swift
//  Middle School
//
//  Created by amr gamal on 11/23/20.
//  Copyright © 2020 amr gamal. All rights reserved.
//

import UIKit
import ObjectMapper


class GetAllDetailsOrderModelList: GeneralResponseModel {
    var data: OrderData?

    
    override func mapping(map: Map) {
        data <- map["data"]
        status <- map["status"]


        
    }
}


class OrderData: Mappable {
    
    required init?(map: Map) {
    }


    
    
    var id: Int?
    var shipper_data: String?
    var code: String?
    var source_lat: String?
    var source_lng: String?
    var destination_lat: String?
    var destination_lng: String?
    var discount: String?
    
    
    var type: Int?
    var type_name: String?
    var status: Int?
    var price: String?
    var comment: String?
    var note: String?
    var invoice: String?
    var created_at: String?
    var payment_type: Int?
    var destination_addres_name: String?
    
     var reted_by_client: Double?
     var reted_by_shipper: Double?
     var shipping_cost: String?
     var deserve_more: Int?
     var shop_name: String?
     var package_type: Int?
     var addition_service: Int?
     var addition_service_cost: String?


    var user_data: UserDataDetails?
    
    var shiper_data: ShiperDataDetails?


    var items: [AllItems]?


    
    
    init() {
        
    }
    
    func mapping(map: Map) {
       
        shiper_data <- map["shipper_data"]

            id <- map["id"]
            shipper_data <- map["shipper_data"]
            code <- map["code"]
            source_lat <- map["source_lat"]
            source_lng <- map["source_lng"]
            destination_lat <- map["destination_lat"]
            destination_lng <- map["destination_lng"]
            discount <- map["discount"]
            type <- map["type"]
            type_name <- map["type_name"]
            status <- map["status"]
            price <- map["price"]
            comment <- map["comment"]
            note <- map["note"]
            invoice <- map["invoice"]
            created_at <- map["created_at"]
            payment_type <- map["payment_type"]
            destination_addres_name <- map["destination_addres_name"]
                reted_by_client <- map["reted_by_client"]
                  reted_by_shipper <- map["reted_by_shipper"]
                  shipping_cost <- map["shipping_cost"]
                  deserve_more <- map["deserve_more"]
                  shop_name <- map["shop_name"]
                  package_type <- map["package_type"]
                  addition_service <- map["addition_service"]
                 addition_service_cost <- map["addition_service_cost"]

        
        
        
        
        
        
        
            user_data <- map["user_data"]
          items <- map["items"]


   
         
    }
    
}

class UserDataDetails: Mappable {
    
    required init?(map: Map) {
    }
 
      
    
    var id: Int?
    var type_id: Int?
    var name: String?
    var email: String?
    var phone: String?
    var gender: String?
    var id_number: String?
    var image: String?
    
    
    var id_card: String?
    var license: String?
    var rate: String?
    var rate_count: Int?
    var is_active: Int?
    var is_verified: Int?
    var unseen_notifications_count: Int?
    var ip: String?
    var amount: Int?
    var created_at: String?
    var city: String?
    var area: String?




    

    
    
    init() {
        
    }
    
    func mapping(map: Map) {
        
       
        
               id <- map["id"]
               type_id <- map["type_id"]
               name <- map["name"]
               email <- map["email"]
               phone <- map["phone"]
               gender <- map["gender"]
               id_number <- map["id_number"]
               image <- map["image"]
               id_card <- map["id_card"]
               license <- map["license"]
               rate <- map["rate"]
               rate_count <- map["rate_count"]
               is_active <- map["is_active"]
               is_verified <- map["is_verified"]
               unseen_notifications_count <- map["unseen_notifications_count"]
               created_at <- map["created_at"]
               ip <- map["ip"]
               amount <- map["amount"]
               city <- map["city"]
        area <- map["area"]


   
         
    }
    
}


class AllItems: Mappable {
    
    required init?(map: Map) {
    }

    
    
    var id: Int?
    var order_id: Int?
    var title: String?
    var image: String?
    var quantity: Int?
    var created_at: String?
    var updated_at: String?
    


    

    
    
    init() {
        
    }
    
    func mapping(map: Map) {
        
       
            id <- map["id"]
            order_id <- map["order_id"]
            title <- map["title"]
            image <- map["image"]
            quantity <- map["quantity"]
            created_at <- map["created_at"]
            updated_at <- map["updated_at"]
          
         
    }
    
}

class ShiperDataDetails: Mappable {
    
    required init?(map: Map) {
    }
 
      
    
   
    var id: Int?
    var type_id: Int?
    var name: String?
    var email: String?
    var phone: String?
    var gender: String?
    var id_number: String?
    var image: String?
    var id_card: String?
    var license: String?
    var rate: String?
    var rate_count: Int?
    var is_active: Int?
    var is_verified: Int?
    var unseen_notifications_count: Int?
    var ip: String?
    var created_at: String?
    var city: Int?
     var area: Int?
    var amount: Int?




    

    
    
    init() {
        
    }
    
    func mapping(map: Map) {
        
  
       id <- map["id"]
       type_id <- map["type_id"]
       name <- map["name"]
       email <- map["email"]
       phone <- map["phone"]
       gender <- map["gender"]
       id_number <- map["id_number"]
       image <- map["image"]
       
       id_card <- map["id_card"]
       license <- map["license"]
       rate <- map["rate"]
       rate_count <- map["rate_count"]
       is_active <- map["is_active"]
       is_verified <- map["is_verified"]
       unseen_notifications_count <- map["unseen_notifications_count"]
       ip <- map["ip"]
       
       created_at <- map["created_at"]
       city <- map["city"]
       area <- map["area"]
       amount <- map["amount"]

   
         
    }
    
}
