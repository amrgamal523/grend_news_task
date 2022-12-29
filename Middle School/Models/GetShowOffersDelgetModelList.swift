//
//  GetShowOffersDelgetModelList.swift
//  Middle School
//
//  Created by amr gamal on 11/22/20.
//  Copyright © 2020 amr gamal. All rights reserved.
//

import UIKit
import ObjectMapper


class GetShowOffersDelgetModelList: GeneralResponseModel {
    var data: [AllDelgeat]?
    
    override func mapping(map: Map) {
        data <- map["data"]
        status <- map["status"]

        
    }
}


class AllDelgeat: Mappable {
    
    required init?(map: Map) {
    }

    var id: Int?
    var order_id: Int?
    var shipping: Double?
    var lat: String?
    var lng: String?
    var status: Int?
    var created_at: String?
    var user_id: Int?
 
    var delget_data: DelgeatsData?

    
    
    init() {
        
    }
    
    func mapping(map: Map) {
        
       
        id <- map["id"]
        order_id <- map["order_id"]
        shipping <- map["shipping"]
        lat <- map["lat"]
        lng <- map["lng"]
        status <- map["status"]
        created_at <- map["created_at"]
        user_id <- map["user_id"]
        delget_data <- map["user_data"]

        

        
    }
    
}

class DelgeatsData: Mappable {
    
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
