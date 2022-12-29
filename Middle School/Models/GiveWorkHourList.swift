//
//  GiveWorkHourList.swift
//  Middle School
//
//  Created by amr gamal on 2/2/21.
//  Copyright © 2021 amr gamal. All rights reserved.
//

import UIKit
import ObjectMapper


class GiveWorkHourList: GeneralResponseModel {
    
    
    var data: [ProviderWorksHour]?

        override func mapping(map: Map) {
            data <- map["data"]
            status <- map["status"]

        }
    }
    
    class ProviderWorksHour: Mappable
    {
     
        
        var id: Int?
        var day_id: Int?
        var period: Int?


       var from: String?
        var to: String?


       
       
        required init?(map: Map) {
            
        }
        
        func mapping(map: Map) {
            id <- map["id"]
          day_id <- map["day_id"]
              period <- map["period"]
            from <- map["from"]
              to <- map["to"]




        }

        
    }



