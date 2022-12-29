//
//  GetAllTypeComplaint.swift
//  Middle School
//
//  Created by amr gamal on 11/17/20.
//  Copyright © 2020 amr gamal. All rights reserved.
//

import UIKit
import ObjectMapper


class GetAllTypeComplaint: GeneralResponseModel {
    var data: [TypesComplaints]?

    
    override func mapping(map: Map) {
        data <- map["data"]
        status <- map["status"]


        
    }
}


class TypesComplaints: Mappable {
    
    required init?(map: Map) {
    }
    

    
    
    var id: Int?
    var title: String?

    
    
    init() {
        
    }
    
    func mapping(map: Map) {
        
       
        id <- map["id"]
        title <- map["title"]
         
    }
    
}
