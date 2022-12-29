//
//  CustomView.swift
//  hadr_edary
//
//  Created by amr gamal on 10/9/19.
//  Copyright © 2019 amr gamal. All rights reserved.
//

import UIKit

class CustomView: NSObject {
    static var MainColor:UIColor=UIColor(red: 0/255, green: 161, blue: 145/255, alpha: 1)
    
    static func editMybutton(theview:UIView,border:Int,radius:Float,color:UIColor)
    {
        theview.layer.borderWidth = CGFloat(border)
        theview.layer.masksToBounds = false
        theview.layer.borderColor = color.cgColor
        theview.layer.cornerRadius = CGFloat(radius)
        theview.clipsToBounds = true
    }

}
