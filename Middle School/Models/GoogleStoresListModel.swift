//
//  GoogleStoresListModel.swift
//  Middle School
//
//  Created by amr gamal on 2/1/21.
//  Copyright © 2021 amr gamal. All rights reserved.
//

import UIKit
import ObjectMapper


class GoogleStoresListModel: GeneralResponseModel {
    
    var data: [GoogleStore]?
    var next_page_token:String?

    override func mapping(map: Map) {
        data <- map["results"]
        status <- map["status"]
        next_page_token <- map["next_page_token"]

    }
}

class GoogleStore: Mappable {
    
    required init?(map: Map) {
    }
    
  
    
      var place_id: String?
      var formatted_address: String?
      var icon: String?
      var name: String?
      var rating: Double?
    var types:[String]?
//    var vicinity: String?

    var destaince_killo: Double?
    // ده متغير انا ضفتها من عندي عشان احسب عليه مسافة المحل

    var geometry: Geometry?

    
    func mapping(map: Map) {
        
              place_id <- map["place_id"]
              formatted_address <- map["formatted_address"]
        
        if(formatted_address == nil)
        {
            formatted_address <- map["vicinity"]

            
        }

              icon <- map["icon"]
              name <- map["name"]

              rating <- map["rating"]
              geometry <- map["geometry"]
        types <- map["types"]

    }
}

class Geometry: Mappable {
    
    required init?(map: Map) {
    }
    
  
    
      var geometrylocation: Geometrylocation?
    
    
    func mapping(map: Map) {
        
              geometrylocation <- map["location"]
  
    }
}

class Geometrylocation: Mappable {
    
    required init?(map: Map) {
    }

      var lat: Double?
    var lng: Double?

    
    func mapping(map: Map) {
        
              lat <- map["lat"]
              lng <- map["lng"]
  
    }
}
