//
//  GetWalletTransferModelList.swift
//  Middle School
//
//  Created by amr gamal on 11/25/20.
//  Copyright © 2020 amr gamal. All rights reserved.
//

import UIKit
import ObjectMapper


class GetWalletTransferModelList: GeneralResponseModel {
    var data: WalletBallance?

    
    override func mapping(map: Map) {
        data <- map["data"]

        status <- map["status"]


        
    }
}


class WalletBallance: Mappable {
    
    required init?(map: Map) {
    }


    
    
    var amount: Int?
    var wallet: [WalletTransfer]?

    

    
    
    init() {
        
    }
    
    func mapping(map: Map) {
        
            amount <- map["amount"]

         
        
            wallet <- map["transaction_history"]

   
         
    }
    
}

class WalletTransfer: Mappable {
    
    required init?(map: Map) {
    }

    
    var id: Int?
    var user_id: Int?
    var amount: String?
    var date: String?
    var title: String?
    var description: String?
    


    

    
    
    init() {
        
    }
    
    func mapping(map: Map) {
        
       
            id <- map["id"]
            user_id <- map["user_id"]
            amount <- map["amount"]
            date <- map["date"]
            title <- map["title"]
            description <- map["description"]
          
         
    }
    
}
