//
//  GetForgetPasswordModel.swift
//  Middle School
//
//  Created by amr gamal on 11/18/20.
//  Copyright © 2020 amr gamal. All rights reserved.
//

import UIKit
import ObjectMapper


class GetForgetPasswordModel: GeneralResponseModel {
    var pass:GetThePassword?
    
    override func mapping(map: Map) {
        pass <- map["data"]
        status <- map["status"]
        message <- map["message"]

    }
}
    class GetThePassword: Mappable
    {
      
    
        
        var id: Int?
        var phone: String?
        var verification_code: Int?
       
        required init?(map: Map) {
            
        }
        
        func mapping(map: Map) {
            id <- map["id"]
            phone <- map["phone"]
            verification_code <- map["verification_code"]

        }
    
        
    }
