//
//  GetMyNotesModelList.swift
//  Middle School
//
//  Created by amr gamal on 10/25/21.
//  Copyright © 2021 amr gamal. All rights reserved.
//

import UIKit
import ObjectMapper


class GetMyNotesModelList: GeneralResponseModel {
    
    var data: [NotesList]?

    override func mapping(map: Map) {
        data <- map
        
    }
}

class NotesList: Mappable {


    var success:Bool?
    var id:String?
    var title:String?
    var description:String?

    var user_id:String?
    var date:String?


   

    required init?(map: Map){
        
    }

    func mapping(map: Map) {
        success <- map["success"]
        id <- map["id"]
        title <- map["title"]
        description <- map["description"]
        user_id <- map["user_id"]
        date <- map["date"]





    }
    
}

