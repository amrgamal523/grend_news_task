//
//  GeTWeeklyOfferModelList.swift
//  Middle School
//
//  Created by amr gamal on 11/24/20.
//  Copyright © 2020 amr gamal. All rights reserved.
//

import UIKit
import ObjectMapper


class GeTWeeklyOfferModelList:  GeneralResponseModel {
    var data: [WeeklyOffer]?

    
    override func mapping(map: Map) {
        data <- map["data"]
        status <- map["status"]


        
    }
}


class WeeklyOffer: Mappable {
    
    required init?(map: Map) {
    }

    
    var id: Int?
    var title: String?
    var image: String?
  

    
    
    init() {
        
    }
    
    func mapping(map: Map) {
        
       
        id <- map["id"]
        title <- map["title"]
        image <- map["image"]
      
    }
    
}
