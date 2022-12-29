//
//  GetProductDetails.swift
//  Middle School
//
//  Created by amr gamal on 10/24/21.
//  Copyright © 2021 amr gamal. All rights reserved.
//

import UIKit
import ObjectMapper


class GetProductDetails: GeneralResponseModel {
    
    var data : [AllProduct]?
    var data2 : [AllProduct]?

    override func mapping(map: Map) {
        data <- map
        data2 <- map["products"]

        
    }
}

class AllProduct: Mappable {



    
    
    var id: String?
    var name: String?
     var price: String?

    var img: String?
    var description: String?
     var category_id: String?
    var category_name: String?
    var date_reg: String?
    var after_discount: String?

    


    required init?(map: Map){
        
    }

    func mapping(map: Map) {
        price <- map["price"]

        id <- map["id"]
        name <- map["name"]
        img <- map["img"]
          description <- map["description"]
          category_id <- map["category_id"]
      
          category_name <- map["category_name"]
           date_reg <- map["date_reg"]
        after_discount <- map["after_discount"]

     
    }
}
