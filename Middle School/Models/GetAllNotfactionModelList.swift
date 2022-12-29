//
//  GetAllNotfactionModelList.swift
//  Middle School
//
//  Created by amr gamal on 11/17/20.
//  Copyright © 2020 amr gamal. All rights reserved.
//

import UIKit
import ObjectMapper


class GetAllNotfactionModelList: GeneralResponseModel {
    var data: [MyNotification]?
    var pages:Paginat?

    
    override func mapping(map: Map) {
        data <- map["data"]
        status <- map["status"]
        pages <- map["paginate"]


        
    }
}


class MyNotification: Mappable {
    
    required init?(map: Map) {
    }
    

    
    
    var id: Int?
    var user_sender_id: Int?
    var user_sender_name: String?
    var user_sender_image: String?
    var user_reciever_id: Int?
    var item_id: Int?
 
    var data: String?
    
    var type: Int?

    var read_at: String?

    var created_at: String?
    var order_status: Int?


    
    
    init() {
        
    }
    
    func mapping(map: Map) {
        
       
        id <- map["id"]
        user_sender_id <- map["user_sender_id"]
        user_sender_name <- map["user_sender_name"]
        user_reciever_id <- map["user_reciever_id"]
        item_id <- map["item_id"]
        data <- map["data"]
        type <- map["type"]
        read_at <- map["read_at"]
        created_at <- map["created_at"]
        user_sender_image <- map["user_sender_image"]

        order_status <- map["order_status"]


  
      

        
    }
    
}



       class Paginat: Mappable
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
