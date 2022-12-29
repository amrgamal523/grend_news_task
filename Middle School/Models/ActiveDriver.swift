//
//  ActiveDriver.swift
//  Middle School
//
//  Created by amr gamal on 11/22/20.
//  Copyright © 2020 amr gamal. All rights reserved.
//

import UIKit
import CoreLocation


class ActiveDriver: NSObject {

    var id:String=""
    var location:CLLocation=CLLocation()
    
    init(id:String , location:CLLocation  ) {
        self.id=id
        self.location=location
    }
    override init() {
        
    }
}
