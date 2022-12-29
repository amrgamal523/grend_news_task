//
//  GetAllCityModelList.swift
//  Middle School
//
//  Created by amr gamal on 1/25/21.
//  Copyright © 2021 amr gamal. All rights reserved.
//

import UIKit
import ObjectMapper


class GetAllCityModelList:  GeneralResponseModel {
    
    var data: [CityAndAreas]?
    
    override func mapping(map: Map) {
        data <- map["data"]
        status <- map["status"]
    }
}

class CityAndAreas: Mappable {
    
    required init?(map: Map) {
    }
    
  
    
      var id: Int?
      var title: String?
  
    
    
    func mapping(map: Map) {
        
              id <- map["id"]
              title <- map["title"]
           
        
    }
}
