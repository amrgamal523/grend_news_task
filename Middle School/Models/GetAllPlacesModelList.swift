//
//  GetAllPlacesModelList.swift
//  Middle School
//
//  Created by amr gamal on 11/23/20.
//  Copyright © 2020 amr gamal. All rights reserved.
//

import UIKit
import ObjectMapper


class GetAllPlacesModelList: GeneralResponseModel {
    var data: [MyFavoriteplaces]?

    
    override func mapping(map: Map) {
        data <- map["data"]
        status <- map["status"]


        
    }
}


class MyFavoriteplaces: Mappable {
    
    required init?(map: Map) {
    }

    
    var id: Int?
    var user_id: Int?
    var lat: String?
    var lng: String?
    var name: String?
    var note: String?

    var created_at: String?

    
    
    init() {
        
    }
    
    func mapping(map: Map) {
        
       
        id <- map["id"]
        user_id <- map["user_id"]
        lat <- map["lat"]
        lng <- map["lng"]
        name <- map["name"]
        note <- map["note"]
        created_at <- map["created_at"]
    }
    
}
