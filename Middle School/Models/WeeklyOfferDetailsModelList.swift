//
//  WeeklyOfferDetailsModelList.swift
//  Middle School
//
//  Created by amr gamal on 11/25/20.
//  Copyright © 2020 amr gamal. All rights reserved.
//

import UIKit
import ObjectMapper


class WeeklyOfferDetailsModelList: GeneralResponseModel {
    var data: WeeklyDetails?

    
    override func mapping(map: Map) {
        data <- map["data"]

        status <- map["status"]


        
    }
}


class WeeklyDetails: Mappable {
    
    required init?(map: Map) {
    }


    
    
    var id: Int?
    var title: String?

    var imgs: [String]?
    var details: [DetailsOffer]?

    

    
    
    init() {
        
    }
    
    func mapping(map: Map) {
        
            id <- map["id"]
        title <- map["title"]


         
        
            imgs <- map["images"]
        details <- map["details"]


   
         
    }
    
}

class ImagesOffer: Mappable {
    
    required init?(map: Map) {
    }

        


    

    
    
    init() {
        
    }
    
    func mapping(map: Map) {
        
       
   
          
         
    }
    
}

class DetailsOffer: Mappable {
    
    required init?(map: Map) {
    }
    var id: Int?
      var title: String?
    var description: String?
    var logo: String?
        

    var lat: String?
     var lng: String?
    var image: String?


    
    
    init() {
        
    }
    
    func mapping(map: Map) {
        
       id <- map["id"]
         title <- map["title"]
        image <- map["image"]


          
         
             description <- map["description"]
         logo <- map["logo"]
   
        lat <- map["lat"]
        lng <- map["lng"]

          
         
    }
    
}
