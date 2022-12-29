//
//  GetSlidersModels.swift
//  Middle School
//
//  Created by amr gamal on 11/18/20.
//  Copyright © 2020 amr gamal. All rights reserved.
//

import UIKit
import ObjectMapper


class GetSlidersModels: GeneralResponseModel {
    var data:DataSlider?
    
    override func mapping(map: Map) {
        data <- map["data"]
        status <- map["status"]
        message <- map["message"]

    }
}

class DataSlider: Mappable
   {
 
   

       var Slider:[SliderImage]?
       var id: Int?
 

       required init?(map: Map) {
           
       }
       
       func mapping(map: Map) {
           id <- map["id"]
          Slider <- map["images"]    

       }
   
       
   }




    class SliderImage: Mappable
    {
  
    
        
        var link: String?
        var image: String?
  
        init() {
            
        }
        required init?(map: Map) {
            
        }
        
        func mapping(map: Map) {
            link <- map["link"]
            image <- map["image"]

          
         
            
     

        }
    
        
    }
