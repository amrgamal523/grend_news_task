//
//  GetAllProviderModelList.swift
//  Middle School
//
//  Created by amr gamal on 1/28/21.
//  Copyright © 2021 amr gamal. All rights reserved.
//

import UIKit
import ObjectMapper


class GetAllProviderModelList: GeneralResponseModel {
    
    var data: [CenterAndPersoneProvider]?
    var pages:Paginatt?
    
    
    var object_data: CenterAndPersoneProvider?
//انا عملته عشان اجيب بيانات المركز نفس البيانات بدل ما اعمله كلاس تاني

    
    override func mapping(map: Map) {
        data <- map["data"]
        status <- map["status"]
        object_data <- map["data"]

    }
}

class CenterAndPersoneProvider: Mappable {
    
    required init?(map: Map) {
    }
    
   
    
      var id: Int?
      var provider_type: Int?
   var served_at: Int?



      var name: String?
      var email: String?
      var phone: String?
      var image: String?
       var rate: String?
    var rate_count: Int?

    var commerce_record: String?

    var description: String?
         var lat: String?
         var lng: String?
         var city_name: String?
          var area_name: String?
    var is_favorite: Bool?

  
    var img_center:[String]?
    var work_hours:[WorksHourCenter]?

    
    
    func mapping(map: Map) {
        
              id <- map["id"]
              provider_type <- map["provider_type"]
                served_at <- map["served_at"]
                   name <- map["name"]
                 email <- map["email"]
                   phone <- map["phone"]
                  image <- map["image"]
                   rate <- map["rate"]
                 description <- map["description"]
                     lat <- map["lat"]
                       lng <- map["lng"]
                      city_name <- map["city_name"]
                       area_name <- map["area_name"]
         work_hours <- map["work_hours"]
        is_favorite <- map["is_favorite"]

                  img_center <- map["images"]

           commerce_record <- map["commerce_record"]
        rate_count <- map["rate_count"]


           
        
    }
}

class WorksHourCenter: Mappable
{
 
    
    var id: Int?
    var day_id: Int?
    var period: Int?


   var from: String?
    var to: String?
    var day_name: String?


   
   
    required init?(map: Map) {
        
    }
    
    func mapping(map: Map) {
        id <- map["id"]
      day_id <- map["day_id"]
          period <- map["period"]
        from <- map["from"]
          to <- map["to"]
        day_name <- map["day_name"]




    }

    
}

class Paginatt: Mappable
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
