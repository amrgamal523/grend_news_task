//
//  Defaults.swift
//
//  Created by Amr Elsayed on 1/15/18.
//  Copyright © 2018 Amr Elsayed. All rights reserved.

import UIKit


class Defaults: NSObject {
//    var aboutintro:SettingApp?
//
//    
//    
//    func callServerToGetSeeting()
//                {
//                    let connection:Connection=Connection()
//                    connection.method = .get
//                    connection.startConnectionWithMapping(view: self, model: GetSettIngModel.self, url:Url.mySeetingAppUrl , parameter:nil) { (result) in
//                        var font:UIFont=self.about_App.font!
//
//                        let model:GetSettIngModel=result as! GetSettIngModel
//                        self.aboutintro=model.Setting
//                        
//                   
//                    }
//                }
        
      
    
    
    
    
  
//    {
//        var is_same=true
//        for item in Defaults.showallbuy
//        {
//            let item_prov_id=getProviderID(cart_objct: item)
//
//            if(item_prov_id != provider_id)
//            {
//                is_same=false
//            }
//        }
//
//        return is_same
//    }
    
//
//
//    static func getCartModelServedAt(cart_objct:CartModel) -> Int{
//
//        if(cart_objct.type == .Offers)
//        {
//            return cart_objct.offer?.served_at ?? 0
//        }
//        else
//        {
//            return cart_objct.center_and_person?.served_at ?? 0
//        }
//    }
//
//    static func addToTheCart(cart_objct:CartModel)
//    {
//
//        var prov_id=getProviderID(cart_objct: cart_objct)
//
//        if(checkProviderIdIsSame(provider_id: prov_id) == true)
//        {
//            if(getCartModelServedAt(cart_objct: cart_objct) == 3)
//            {
//                Defaults.showallbuy.append(cart_objct)
//                // تمت اضافة خدمة في السلة من نوع منزل او مركز
//            }
//            else
//            {
//                if(Defaults.showallbuy.count == 0)
//                {
//                    Defaults.showallbuy.append(cart_objct)
//                }
//                else
//                {
//
//                    if(getCartModelServedAt(cart_objct: cart_objct) == 1)
//                    {
//                        // home
//
//                        var is_all_home = true
//
//                        for item in Defaults.showallbuy
//                        {
//                            if(getCartModelServedAt(cart_objct: item) == 2)
//                            {
//                                is_all_home = false
//                            }
//                        }
//
//
//                        if(is_all_home == true)
//                        {
//                           Defaults.showallbuy.append(cart_objct)
//                        }
//                        else
//                        {
//
//                            AlertMessages.showMessage(title: "", body: "يجب ان تكون كل الخدمات في نفس المكان", theme: .warning)
//                                    return
//                        }
//                    }
//                    else
//                    {
//                       // center
//
//                        var is_all_center = true
//
//                        for item in Defaults.showallbuy
//                        {
//                            if(getCartModelServedAt(cart_objct: item) == 1)
//                            {
//                                is_all_center = false
//                            }
//                        }
//
//
//                        if(is_all_center == true)
//                        {
//                           Defaults.showallbuy.append(cart_objct)
//                        }
//                        else
//                        {
//
//                            AlertMessages.showMessage(title: "", body: "يجب ان تكون كل الخدمات في نفس المكان", theme: .warning)
//                                    return
//                        }
//                    }
//                }
//            }
//        }
//        else
//        {
//            AlertMessages.showMessage(title: "", body: "يجب ان تكون كل الخدمات لنفس مزود الخدمة", theme: .warning)
//            return
//        }
//
//
//    }
    
//    static func DeltedToTheCart(objct:CartModel)
//     {
//         var i:Int=0
//
//
//        while i<Defaults.showallbuy.count {
//            if objct.id==showallbuy[i].id
//            {
//                showallbuy.remov
//
//            }
//            
//
//
//
//        }
//
//
//
//     }
    
    
    static func openLink(link:String)
    {
        if let url = URL(string: link) {
            if UIApplication.shared.canOpenURL(url) {
                if #available(iOS 10.0, *) {
                    UIApplication.shared.open(url, options: [:], completionHandler: nil)
                } else {
                    UIApplication.shared.openURL(url)
                }
            }
        }
    }
    
    
    
    
    
    
    
    
    
    static func checkResponse(response : GeneralResponseModel)  -> Bool {
        print(response)
        if(response.status == "ok"){
            return true
        } else {
            return false
        }
    }

 
    
    
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
    
    static func getLanguageIndex()->Int
       {
           
           if((UserDefaults.standard.object(forKey: "lang") as? String ?? "ar")=="ar")
           {
               return 0
           }
           else if((UserDefaults.standard.object(forKey: "lang") as? String ?? "en")=="en")
           {
               return 1
           }
           else
           {
               return 2
           }
       }
       
       static func getLanguage()->String
       {
           
           if((UserDefaults.standard.object(forKey: "lang") as? String ?? "ar")=="ar")
           {
               return "ar"
           }
           else if((UserDefaults.standard.object(forKey: "lang") as? String ?? "en")=="en")
           {
               return "en"
           }
           else
           {
               return "it"
           }
       }
    
    
    static  func timeConversion12(date_time24: String) -> String {
           let dateAsString = date_time24
           let df = DateFormatter()
           df.dateFormat = "yyyy-MM-dd'T'HH:mm:ss.SSSZ"

           let date = df.date(from: dateAsString)
      
           df.dateFormat = "MMM d, h:mm a"

           let time12 = df.string(from: date!)
           print(time12)
           return time12
       }
    
    
    
    static  func NewtimeConversion12(date_time24: String) -> String {
             let dateAsString = date_time24
             let df = DateFormatter()
             df.dateFormat = "HH:mm:ss"

             let date = df.date(from: dateAsString)
        
             df.dateFormat = "h:mm a"

             let time12 = df.string(from: date!)
             print(time12)
             return time12
         }
      
    
  
    
      static  func dateToTimeAM_PM(date: Date) -> String {
                    let df = DateFormatter()
               df.dateFormat = "h:mm a"

               let time12 = df.string(from: date)
               print(time12)
               return time12
           }
    
    static  func dateToTimeOnly(date: Date) -> String {
                  let df = DateFormatter()
             df.dateFormat = "h:mm:ss"

             let time12 = df.string(from: date)
             print(time12)
             return time12
         }
    
    
    static func isValidEmail(testStr:String) -> Bool {
        let emailRegEx = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,64}"
        
        let emailTest = NSPredicate(format:"SELF MATCHES %@", emailRegEx)
        return emailTest.evaluate(with: testStr)
    }
    
    static func isValidPhone(phone: String) -> Bool {
          let phoneRegex = "^[0-9+]{0,1}+[0-9]{5,16}$"
          let phoneTest = NSPredicate(format: "SELF MATCHES %@", phoneRegex)
          return phoneTest.evaluate(with: phone)
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

extension Double {
    func roundToDecimal(_ fractionDigits: Int) -> Double {
        let multiplier = pow(10, Double(fractionDigits))
        return Darwin.round(self * multiplier) / multiplier
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
extension UINavigationBar {
    
    func transparentNavigationBar() {
        self.setBackgroundImage(UIImage(), for: .default)
        self.shadowImage = UIImage()
        self.isTranslucent = true
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
