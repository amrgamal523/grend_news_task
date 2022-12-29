//
//  GetAllOrderDetailsModeList.swift
//  Middle School
//
//  Created by amr gamal on 1/26/21.
//  Copyright © 2021 amr gamal. All rights reserved.
//

import UIKit
import ObjectMapper


class GetAllOrderDetailsModeList: GeneralResponseModel {
    var data:OrderAllData?
    
    override func mapping(map: Map) {
        data <- map["data"]
        status <- map["status"]
        message <- map["message"]

    }
}
    class OrderAllData: Mappable
    {
      
    
        
        var id: Int?
        var address: String?
        var date: String?
        var time: String?
        var tax: String?
        var price: String?
        var total: String?

        var served_at: Int?
        var status: Int?

        var provider:ProviderData?
        var items:[ProductItems]?


       
        required init?(map: Map) {
            
        }
        
        func mapping(map: Map) {
            id <- map["id"]
          provider <- map["provider_data"]
            address <- map["address"]
            date <- map["date"]
            time <- map["time"]
            served_at <- map["served_at"]
            status <- map["status"]
            tax <- map["tax"]
            price <- map["price"]
            total <- map["total"]

            items <- map["items"]


        }
    
        
    }

class ProviderData: Mappable
 {
   
 
     
     var id: Int?
    var name: String?
    var phone: String?
    var image: String?
    var rate: String?
    var served_at: Int?
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
        served_at <- map["served_at"]
        city_name <- map["city_name"]
         area_name <- map["area_name"]
        rate_count <- map["rate_count"]


     }
 
     
 }


class ProductItems: Mappable
{
  

    
    var id: Int?
   var title: String?
    var duration: Int?
      var price: String?
    
    var img_prod:[String]?
    var cat_prod:[ProductCategoray]?



   
   
    required init?(map: Map) {
        
    }
    
    func mapping(map: Map) {
        id <- map["id"]
      title <- map["title"]
          duration <- map["duration"]
        price <- map["price"]
    img_prod <- map["images"]

        cat_prod <- map["categories"]



    }

    
}


//class ProductIMages: Mappable
//{
//  
//
//    
//
//
//   //دي انا حططها كده
//   
//    required init?(map: Map) {
//        
//    }
//    
//    func mapping(map: Map) {
//
//
//
//    }
//
//    
//}

class ProductCategoray: Mappable
{
  

    
    var id: Int?
   var title: String?
//دول انا حطيتم كده معرفش ص ولا غلط لان مفيش ولا اوردر راجعلي فيه كاتجوري اشوفها

   
   
    required init?(map: Map) {
        
    }
    
    func mapping(map: Map) {
        id <- map["id"]
      title <- map["title"]



    }

    
}
