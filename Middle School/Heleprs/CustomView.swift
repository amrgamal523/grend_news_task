//
//  CustomView.swift
//  Gaz
//
//  Created by amr gamal on 10/27/19.
//  Copyright © 2019 amr gamal. All rights reserved.
//

import UIKit

class CustomView: NSObject {
    static var mainColor:UIColor=UIColor(red: 59/255, green: 156/255, blue: 210/255, alpha: 1)
    
    static var mainColor2:UIColor=UIColor(red: 245/255, green: 245/255, blue: 245/255, alpha: 1)

    static var mainColor3:UIColor=UIColor(red: 196/255, green: 154/255, blue: 106/255, alpha: 1)
    
    static var btn_bg_color:UIColor=UIColor(red: 69/255, green: 96/255, blue: 123/255, alpha: 1)

    static var btn_bg_color_alpha:UIColor=UIColor(red: 91/255, green: 217/255, blue: 242/255, alpha: 0.5)

    static var ContinerColour:UIColor=UIColor.lightGray
    static func editMybutton(theview:UIView,border:Int,radius:Float,color:UIColor)
    {
        theview.layer.borderWidth = CGFloat(border)
        theview.layer.masksToBounds = false
        theview.layer.borderColor = color.cgColor
        theview.layer.cornerRadius = CGFloat(radius)
        theview.clipsToBounds = true
    }

}

extension UIView {

    enum GradientColorDirection {
        case vertical
        case horizontal
    }

    func showGradientColors(_ colors: [UIColor], opacity: Float = 1, direction: GradientColorDirection = .vertical) {
        let gradientLayer = CAGradientLayer()
        gradientLayer.opacity = opacity
        gradientLayer.colors = colors.map { $0.cgColor }

        if case .horizontal = direction {
            gradientLayer.startPoint = CGPoint(x: 0.0, y: 0.0)
            gradientLayer.endPoint = CGPoint(x: 1.0, y: 0.0)
        }

        gradientLayer.bounds = self.bounds
        gradientLayer.anchorPoint = CGPoint.zero
        gradientLayer.cornerRadius=self.layer.cornerRadius
        self.layer.insertSublayer(gradientLayer,at: 0)
    }

}
