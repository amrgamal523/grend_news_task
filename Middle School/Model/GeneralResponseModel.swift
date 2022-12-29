//
//  GeneralResponseModel.swift
//  Tawsia
//
//  Created by Amr Elsayed on 6/29/18.
//  Copyright © 2018 Amr Elsayed. All rights reserved.
//

import UIKit
import ObjectMapper

class GeneralResponseModel: Mappable {

    var message: String=""
    var status: String?
    var thestatus: String?

    var code: Int?

    
    required init?(map: Map){
    }
    
    func mapping(map: Map) {
        message <- map["message"]
        status <- map["Status"]
        code <- map["code"]
        thestatus <- map["status"]


    }
    
    init(message:String , status:String) {
        self.message=message
        self.status=status
    }
    
    init() {
        self.message=""
        self.status=""
    }
}

