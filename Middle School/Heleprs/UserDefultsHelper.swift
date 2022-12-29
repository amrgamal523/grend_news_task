//
//  UserDefultsHelper.swift
//  FakhtySwift
//
//  Created by Amr Elsayed on 11/7/17.
//  Copyright © 2017 art4muslim. All rights reserved.
//

import UIKit

class UserDefultsHelper: NSObject {

    static var USER_MODEL:String = "user_model"
    
    
    static let userDef = UserDefaults.standard

    
    static func saveUserDefault(key:String,value:Any)
    {
        userDef.set(value, forKey: key)
    }
    static func getUserDefault(key:String)->Any
    {
        return userDef.object(forKey: key) as Any
    }
    static func removeKeyUserDefault(key:String)
    {
        return userDef.removeObject(forKey: key)
    }
    
    static func isKeyPresentInUserDefaults(key: String) -> Bool {
        return userDef.object(forKey: key) != nil
    }
    
    static func saveObjectDefault(key:String,value:Any)
    {
        let userDataEncoded = NSKeyedArchiver.archivedData(withRootObject: value)
        userDef.set(userDataEncoded, forKey: key)
        userDef.synchronize()
    }
    
    
    static func getObjectDefault(key:String)->Any
    {
        
        if let decodedNSData :NSData = UserDefaults.standard.object(forKey: key) as? NSData
        {
            let Data = NSKeyedUnarchiver.unarchiveObject(with: decodedNSData as Data )
            
            return Data as Any
        }
        else {
            print("Failed")
            
            return ""
        }
    }
    
}
