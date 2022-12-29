//
//  GetAllAdressModelList.swift
//  Middle School
//
//  Created by amr gamal on 10/25/21.
//  Copyright © 2021 amr gamal. All rights reserved.
//

import UIKit
import ObjectMapper


class GetAllAdressModelList:  GeneralResponseModel {
    
    var data: [AllMyAdress]?

    override func mapping(map: Map) {
        data <- map
        
    }
}

class AllMyAdress: Mappable {
   
   
    
    
    var success: Bool?
    var id: String?
    var user_id: String?
     var address: String?
    var special_mark: String?
    var build_num: String?
     var phone: String?
    var city: String?




    required init?(map: Map){
        
    }

    func mapping(map: Map) {
        success <- map["success"]
        id <- map["id"]
        user_id <- map["user_id"]
    
        address <- map["address"]
        special_mark <- map["special_mark"]
        build_num <- map["build_num"]
        phone <- map["phone"]
        city <- map["city"]



    }
}
