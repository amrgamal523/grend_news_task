//
//  HowUseApp.swift
//  Middle School
//
//  Created by amr gamal on 1/26/21.
//  Copyright © 2021 amr gamal. All rights reserved.
//

import UIKit
import ObjectMapper


class HowUseApp: GeneralResponseModel {
    var data: [AboutTheApp]?
    
    override func mapping(map: Map) {
        data <- map["data"]
        status <- map["status"]

        
    }
}


class AboutTheApp: Mappable {
    
    required init?(map: Map) {
    }

    var id: Int?
    var title: String?
    var image: String?
    var description: String?
 
    
    
    
    init() {
        
    }
    
    func mapping(map: Map) {
        
       
        id <- map["id"]
        title <- map["title"]
        image <- map["image"]
        description <- map["description"]
        

        
    }
    
}


