//
//  GetAllQustionANdAnswerModelList.swift
//  Middle School
//
//  Created by amr gamal on 11/17/20.
//  Copyright © 2020 amr gamal. All rights reserved.
//

import UIKit
import ObjectMapper


class GetAllQustionANdAnswerModelList:  GeneralResponseModel {
    
    var data: [AllQuestions]?
    
    override func mapping(map: Map) {
        data <- map["data"]
        status <- map["status"]
    }
}

class AllQuestions: Mappable {
    
    required init?(map: Map) {
    }
    
  
    
      var id: Int?
      var question: String?
      var answer: String?
  
    
    
    func mapping(map: Map) {
        
              id <- map["id"]
              question <- map["question"]
              answer <- map["answer"]
           
        
    }
}
