//
//  EventModelList.swift
//  Middle School
//
//  Created by amr gamal on 2/8/20.
//  Copyright © 2020 amr gamal. All rights reserved.
//

import UIKit
import ObjectMapper

class EventModelList:  GeneralResponseModel {
    
    var event: [AllEvent]?
    
    override func mapping(map: Map) {
        event <- map["news"]
        message <- map["message"]
    }
}

class AllEvent: Mappable {
    
    required init?(map: Map) {
    }
    
    
    
    var event_id: String?
    var event_title: String?
    var event_content: String?
    var event_photo: String?
 
    
    
    func mapping(map: Map) {
        
        event_id <- map["event_id"]
        event_title <- map["event_title"]
        event_content <- map["event_content"]
        event_photo <- map["event_photo"]
      
        
    }
}
