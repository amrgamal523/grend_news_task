//
//  GeneralResponseModel.swift
//  Middle School
//
//  Created by amr gamal on 10/25/20.
//  Copyright © 2020 amr gamal. All rights reserved.
//

import UIKit
import ObjectMapper


class GeneralResponseModel:  Mappable {

  var message: String=""
    var status: String?


        
        required init?(map: Map){
        }
        
        func mapping(map: Map) {
            message <- map["message"]
            status <- map["status"]

        }
        
        init(message:String , status:String) {
            self.message=message
            self.status=status

        }
        
    //    init() {
    //        self.message=""
    //        self.status=false
    //    }
   }


