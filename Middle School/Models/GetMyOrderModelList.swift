//
//  GetMyOrderModelList.swift
//  Middle School
//
//  Created by amr gamal on 1/26/21.
//  Copyright © 2021 amr gamal. All rights reserved.
//

import UIKit
import ObjectMapper

class GetMyOrderModelList: GeneralResponseModel {
    var data: [AllMyOrder]?
    var pages:Paginat?

    
    override func mapping(map: Map) {
        data <- map["data"]
        status <- map["status"]
        pages <- map["paginate"]


        
    }
}


class AllMyOrder: Mappable {
    
    required init?(map: Map) {
    }
   

    
    var id: Int?
    var code: String?
    var image: String?
    var status: Int?
 
  //  var type_title: String?
    
    var type: Int?
    var created_at: String?
    var name: String?




    
    
    init() {
        
    }
    
    func mapping(map: Map) {
        
       
        id <- map["id"]
        code <- map["code"]
        image <- map["image"]
        status <- map["status"]
     //   type_title <- map["type_title"]
        type <- map["type"]
        created_at <- map["created_at"]
        name <- map["name"]



  
      

        
    }
    
}



       class OrderPaginat: Mappable
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
