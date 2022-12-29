//
//  GetAllUserDataList.swift
//  Middle School
//
//  Created by amr gamal on 1/25/21.
//  Copyright © 2021 amr gamal. All rights reserved.
//

import UIKit
import ObjectMapper


class GetAllUserDataList:  GeneralResponseModel {
    var data:AllDataUser?
    
    override func mapping(map: Map) {
        data <- map["data"]
        status <- map["status"]
        message <- map["message"]

    }
}

class AllDataUser: Mappable
   {
 

   

    var id: Int?
    var name: String?
    var email: String?
    var phone: String?
    var image: String?
    var rate: String?
    var rate_count: Int?
    var is_active: Int?
    var is_verified: Int?
    var unseen_notifications_count: Int?
    var created_at: String?
    var city: Int?
    var area: Int?
    var provider_type: Int?
    var show_phone_number: Int?
    var served_at: Int?

    var city_name: String?
    var area_name: String?

 

       required init?(map: Map) {
           
       }
       
       func mapping(map: Map) {
        id <- map["id"]
        name <- map["name"]
        email <- map["email"]
        phone <- map["phone"]
        image <- map["image"]
        rate <- map["rate"]
        rate_count <- map["rate_count"]
        is_active <- map["is_active"]
        is_verified <- map["is_verified"]
        unseen_notifications_count <- map["unseen_notifications_count"]
        
        created_at <- map["created_at"]
        city <- map["city"]
        area <- map["area"]
        provider_type <- map["provider_type"]
        show_phone_number <- map["show_phone_number"]
        served_at <- map["served_at"]
        city_name <- map["city_name"]
        area_name <- map["area_name"]


       }
   
       
   }
