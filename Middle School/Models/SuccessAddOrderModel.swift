//
//  SuccessAddOrderModel.swift
//  Middle School
//
//  Created by amr gamal on 11/19/20.
//  Copyright © 2020 amr gamal. All rights reserved.
//

import UIKit
import ObjectMapper


class SuccessAddOrderModel:  GeneralResponseModel {
    var data: AddOrder?

    
    override func mapping(map: Map) {
        data <- map["data"]
        status <- map["status"]


        
    }
}


class AddOrder: Mappable {
    
    required init?(map: Map) {
    }
    

    
    
    var id: Int?

    
    
    init() {
        
    }
    
    func mapping(map: Map) {
        
       
        id <- map["id"]
         
    }
    
}
