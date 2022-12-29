//
//  GetAllOfferModelList.swift
//  Middle School
//
//  Created by amr gamal on 1/29/21.
//  Copyright © 2021 amr gamal. All rights reserved.
//

import UIKit
import ObjectMapper

class GetAllOfferModelList: GeneralResponseModel {
    
    var data: [AllNewOffer]?
    var pages:Paginatts?

    
    var object_offer: AllNewOffer?
    //نفس البيانات اللي راجعة في شاشة تفاصيل الجلسة بس اوبجكت فبدل ما اعملها كلاس تاني

    
    override func mapping(map: Map) {
        data <- map["data"]
        status <- map["status"]
        object_offer <- map["data"]

    }
}

class AllNewOffer: Mappable {
    init() {
    }
    
    required init?(map: Map) {
        
        
    }
    

    
    
    
    
      var id: Int?
      var title: String?
      var description: String?
      var duration: Int?
      var served_at: Int?
       var price_home_before: String?
      var price_home: String?

    var price_center_before: String?
         var price_center: String?
         var end_date: String?
       var is_offer: Int?

        
    var is_favorite: Bool?
      var img_offer:[String]?

  
  
    var cat_offer:[CategoriesOffer]?
    var provider_details:ProviderOfferDetails?


    
    
    func mapping(map: Map) {
        
        id <- map["id"]
        title <- map["title"]
        description <- map["description"]
        duration <- map["duration"]
        served_at <- map["served_at"]
        price_home_before <- map["price_home_before"]
        price_home <- map["price_home"]
        price_center_before <- map["price_center_before"]
        price_center <- map["price_center"]
        end_date <- map["end_date"]
        is_offer <- map["is_offer"]
        is_favorite <- map["is_favorite"]
        img_offer <- map["images"]
        cat_offer <- map["categories"]
        provider_details <- map["provider_details"]
  
        
    }
}

class CategoriesOffer: Mappable
{
 
 
    var id: Int?
     var title_general: String?
     var parent_id: Int?
     var title: String?
     var alias: String?
     var image: String?
     var type: String?
     var is_active: Int?
   
   
    required init?(map: Map) {
        
    }
    
    func mapping(map: Map) {
        id <- map["id"]
        title_general <- map["title_general"]
        parent_id <- map["parent_id"]
        title <- map["title"]
        alias <- map["alias"]
        image <- map["image"]
        type <- map["type"]
        is_active <- map["is_active"]
        

    }

    
}



class ProviderOfferDetails: Mappable
{
 
    
   var id: Int?
  var name: String?
  var phone: String?
  var image: String?
  var rate: String?
  var show_phone_number: Int?
    var rate_count: Int?

  
  var city_name: String?
  var area_name: String?
   
   
    required init?(map: Map) {
        
    }
    
    func mapping(map: Map) {
        id <- map["id"]
          name <- map["name"]
           phone <- map["phone"]
           image <- map["image"]
           rate <- map["rate"]
           show_phone_number <- map["show_phone_number"]
           city_name <- map["city_name"]
            area_name <- map["area_name"]
        rate_count <- map["rate_count"]


    }

    
}















class Paginatts: Mappable
       {
     
       
           
           var total: Int?
           var lastPage: Int?
           var currentPage: Int?
      



     

           required init?(map: Map) {
               
           }
           
           func mapping(map: Map) {
               total <- map["total"]
               lastPage <- map["lastPage"]
               currentPage <- map["currentPage"]
           

             
            
               
        

           }
     
 }
