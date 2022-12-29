//
//  GetAllBankesModelList.swift
//  Middle School
//
//  Created by amr gamal on 3/25/21.
//  Copyright © 2021 amr gamal. All rights reserved.
//

import UIKit
import ObjectMapper

class GetAllBankesModelList: GeneralResponseModel {
    
    var data: [AllBanks]?

    override func mapping(map: Map) {
        data <- map
        
    }
}

class AllBanks: Mappable {
   

    
    
    
    var success: Bool?
    var id: String?
    var bank_name: String?
     var account_name: String?
    var account_num: String?
    var iban_num: String?



    init() {
    }

    required init?(map: Map){
        
    }

    func mapping(map: Map) {
        success <- map["success"]
        id <- map["id"]
        bank_name <- map["bank_name"]
    
        account_name <- map["account_name"]
        account_num <- map["account_num"]
        iban_num <- map["iban_num"]



    }
}
