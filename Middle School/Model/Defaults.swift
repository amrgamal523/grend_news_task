//
//  Defaults.swift
//
//  Created by Amr Elsayed on 1/15/18.
//  Copyright © 2018 Amr Elsayed. All rights reserved.

import UIKit


class Defaults: NSObject {
    

    static func checkResponse(response : GeneralResponseModel)  -> Bool {
        print(response)
        if(response.status == "success"){
            return true
        } else {
            return false
        }
    }

//    static func isUserLogin() -> Bool
//    {
//        if (UserDefultsHelper.getObjectDefault(key: UserDefultsHelper.USER_MODEL) as? UserDataInformation)?.id != nil
//        {
//            return true
//        }
//        else
//        {
//            return false
//        }
//    }
//
//    static func getUserId ( ) -> String
//    {
//        if(Defaults.isUserLogin())
//        {
//            return ("\((UserDefultsHelper.getObjectDefault(key: UserDefultsHelper.USER_MODEL) as? UserDataInformation)!.id ?? 0)")
//
//        }
//        else
//        {
//            return ""
//        }
//    }
    
//    static func getUserPassword ( ) -> String
//    {
//        if(Defaults.isUserLogin())
//        {
//            return ((UserDefultsHelper.getObjectDefault(key: UserDefultsHelper.USER_MODEL) as? UserDataInformation)!.user_password)
//
//        }
//        else
//        {
//            return ""
//        }
//    }
//
//    static func getUser ( ) -> UserDataInformation
//    {
//        if(Defaults.isUserLogin())
//        {
//            return ((UserDefultsHelper.getObjectDefault(key: UserDefultsHelper.USER_MODEL) as? UserDataInformation)!)
//
//        }
//        else
//        {
//            return UserDataInformation()
//        }
//    }
    
//    static func getUserToken ( ) -> String
//    {
//        if(Defaults.isUserLogin())
//        {
//            return ((UserDefultsHelper.getObjectDefault(key: UserDefultsHelper.USER_MODEL) as? User)!.api_key)
//
//        }
//        else
//        {
//            return "1qaz2wsx3edc4rfv5tgb"
//        }
//    }
    
    
    static func isValidEmail(testStr:String) -> Bool {
        let emailRegEx = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,64}"
        
        let emailTest = NSPredicate(format:"SELF MATCHES %@", emailRegEx)
        return emailTest.evaluate(with: testStr)
    }
    
    static func isValidUrl(urlString: String?) -> Bool {
        if var urlString = urlString {
            if(urlString.starts(with: "http") == false)
            {
                urlString="http://"+urlString
            }
            if let url = URL(string: urlString) {
                return UIApplication.shared.canOpenURL(url)
            }
        }
        return false
    }
    
    static func resetDefaults() {
        let defaults = UserDefaults.standard
        let dictionary = defaults.dictionaryRepresentation()
        dictionary.keys.forEach { key in
            defaults.removeObject(forKey: key)
        }
        defaults.synchronize()
    }
    
    
    //===================== customViews

    
}

extension String {
    var htmlAttributedString: NSAttributedString? {
        return try? NSAttributedString(data: Data(utf8), options: [.documentType: NSAttributedString.DocumentType.html, .characterEncoding: String.Encoding.utf8.rawValue], documentAttributes: nil)
    }
}

extension UIColor {
    public convenience init?(hex: String) {
        let r, g, b, a: CGFloat
        
        if hex.hasPrefix("#") {
            let start = hex.index(hex.startIndex, offsetBy: 1)
            let hexColor = String(hex[start...])
            
            if hexColor.count == 8 {
                let scanner = Scanner(string: hexColor)
                var hexNumber: UInt64 = 0
                
                if scanner.scanHexInt64(&hexNumber) {
                    r = CGFloat((hexNumber & 0xff000000) >> 24) / 255
                    g = CGFloat((hexNumber & 0x00ff0000) >> 16) / 255
                    b = CGFloat((hexNumber & 0x0000ff00) >> 8) / 255
                    a = CGFloat(hexNumber & 0x000000ff) / 255
                    
                    self.init(red: r, green: g, blue: b, alpha: a)
                    return
                }
            }
        }
        
        return nil
    }
}

extension UIViewController {
    
    func registerForKeyboardWillShowNotification(_ scrollView: UIScrollView, usingBlock block: ((CGSize?) -> Void)? = nil) {
        _ = NotificationCenter.default.addObserver(forName: UIResponder.keyboardWillShowNotification, object: nil, queue: nil, using: { notification -> Void in
            let userInfo = notification.userInfo!
            let keyboardSize = (userInfo[UIResponder.keyboardFrameEndUserInfoKey]! as AnyObject).cgRectValue.size
            let contentInsets = UIEdgeInsets(top: scrollView.contentInset.top, left: scrollView.contentInset.left, bottom: keyboardSize.height, right: scrollView.contentInset.right)
            
            scrollView.setContentInsetAndScrollIndicatorInsets(contentInsets)
            block?(keyboardSize)
        })
    }
    
    func registerForKeyboardWillHideNotification(_ scrollView: UIScrollView, usingBlock block: ((CGSize?) -> Void)? = nil) {
        _ = NotificationCenter.default.addObserver(forName: UIResponder.keyboardWillHideNotification, object: nil, queue: nil, using: { notification -> Void in
            let userInfo = notification.userInfo!
            let keyboardSize = (userInfo[UIResponder.keyboardFrameEndUserInfoKey]! as AnyObject).cgRectValue.size
            let contentInsets = UIEdgeInsets(top: scrollView.contentInset.top, left: scrollView.contentInset.left, bottom: 0, right: scrollView.contentInset.right)
            
            scrollView.setContentInsetAndScrollIndicatorInsets(contentInsets)
            block?(keyboardSize)
        })
    }
}

extension UIScrollView {
    
    func setContentInsetAndScrollIndicatorInsets(_ edgeInsets: UIEdgeInsets) {
        self.contentInset = edgeInsets
        self.scrollIndicatorInsets = edgeInsets
    }
}

extension Date {
    
    static func -(recent: Date, previous: Date) -> ( day: Int?, hour: Int?, minute: Int?, second: Int?) {
        let day = Calendar.current.dateComponents([.day], from: previous, to: recent).day
        let hour = Calendar.current.dateComponents([.hour], from: previous, to: recent).hour
        let minute = Calendar.current.dateComponents([.minute], from: previous, to: recent).minute
        let second = Calendar.current.dateComponents([.second], from: previous, to: recent).second
        
        return ( day: day, hour: hour, minute: minute, second: second)
    }
    
    
}

struct StopWatch {
    
    var totalSeconds: Int
    
    var years: Int {
        return totalSeconds / 31536000
    }
    
    var days: Int {
        return (totalSeconds % 31536000) / 86400
    }
    
    var hours: Int {
        return (totalSeconds % 86400) / 3600
    }
    
    var minutes: Int {
        return (totalSeconds % 3600) / 60
    }
    
    var seconds: Int {
        return totalSeconds % 60
    }
    
    //simplified to what OP wanted
    var hoursMinutesAndSeconds: (hours: Int, minutes: Int, seconds: Int) {
        return (hours, minutes, seconds)
    }
}
