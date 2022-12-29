//
//  GetSettIngModel.swift
//  Middle School
//
//  Created by amr gamal on 11/17/20.
//  Copyright © 2020 amr gamal. All rights reserved.
//

import UIKit
import ObjectMapper


class GetSettIngModel: GeneralResponseModel {
    var Setting:SettingApp?
    
    override func mapping(map: Map) {
        Setting <- map["data"]
        status <- map["status"]
    }
}
    class SettingApp: Mappable
    {
     
    
    
        
        var id: Int?
        var created_at: String?
        var updated_at: String?
        var language: String?
        var app_title: String?
        var facebook: String?
        var tweeter: String?
        var instagram: String?
        var linkedin: Double?

        var snapchat: String?
        var website: String?
        var phone_1: String?
        var mail: String?
        var address: String?
        var app_android_lnk: String?
        var app_ios_link: String?
        
        var app_share_note: String?
        var work_times: String?
        var logo: String?
        var register_st_1: String?
        var register_st_2: String?
        var register_st_3: String?
        
        var about_us: String?
            var about_us_image: String?
            var terms: String?
            var privacy: String?
            var lat: String?
            var lng: String?
        
        var commission_percent: String?
        var addition_service_cost: String?
        var banner: String?
        var telegram: String?
        var customer_service: String?
        var unified_number: String?
        
        var minimum_shipping: String?
         var geofire_radius: String?
         var tax: String?
        
        var youtube: String?

        required init?(map: Map) {
            
        }
        
        func mapping(map: Map) {
            id <- map["id"]
            created_at <- map["created_at"]
            updated_at <- map["updated_at"]
            language <- map["language"]
            app_title <- map["app_title"]
            facebook <- map["facebook"]
            tweeter <- map["tweeter"]
            instagram <- map["instagram"]
            linkedin <- map["linkedin"]
            snapchat <- map["snapchat"]
            website <- map["website"]
            phone_1 <- map["phone_1"]
            mail <- map["mail"]
            address <- map["address"]
            app_android_lnk <- map["app_android_lnk"]
            logo <- map["logo"]
            app_ios_link <- map["app_ios_link"]
            app_share_note <- map["app_share_note"]
            work_times <- map["work_times"]
            logo <- map["logo"]
            register_st_1 <- map["register_st_1"]
            register_st_2 <- map["register_st_2"]
            
            register_st_3 <- map["register_st_3"]
            about_us <- map["about_us"]
            about_us_image <- map["about_us_image"]
            terms <- map["terms"]
            privacy <- map["privacy"]
            lat <- map["lat"]
            lng <- map["lng"]
            commission_percent <- map["commission_percent"]
            addition_service_cost <- map["addition_service_cost"]
            banner <- map["banner"]
            telegram <- map["telegram"]
            customer_service <- map["customer_service"]
            unified_number <- map["unified_number"]
            youtube <- map["youtube"]

            minimum_shipping <- map["minimum_shipping"]
                 geofire_radius <- map["geofire_radius"]
                 tax <- map["tax"]


        }
    
        
    }

