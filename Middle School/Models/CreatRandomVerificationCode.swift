//
//  CreatRandomVerificationCode.swift
//  Middle School
//
//  Created by amr gamal on 11/17/20.
//  Copyright © 2020 amr gamal. All rights reserved.
//

import UIKit
import ObjectMapper


class CreatRandomVerificationCode: GeneralResponseModel {
    var data:Int?
    
    override func mapping(map: Map) {
        data <- map["data"]
        status <- map["status"]
    }
}
