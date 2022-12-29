//
//  Connection.swift
//
//  Created by Amr Elsayed on 1/15/18.
//  Copyright © 2018 Amr Elsayed. All rights reserved.

import UIKit
import Alamofire
import AlamofireObjectMapper
import ObjectMapper

class Connection: NSObject {

    var showErrorDialog=true;
    var showProgressDialog=true;
    var isAuthorized = false
    var method = HTTPMethod.post;
    
    
    func startConnection(view:UIViewController , url:String , parameter:Dictionary<String, Any>?,callback:@escaping (([String:AnyObject])?) -> Void ){
        
        if(showProgressDialog)
        {
           Dialog.showCircleProgressDialog()
        }
        
        var Auth_header :NSDictionary = [:]
        
        let urlwithPercentEscapes = url.addingPercentEncoding( withAllowedCharacters: NSCharacterSet.urlQueryAllowed)

        Alamofire.request(URL(string:urlwithPercentEscapes!)! , method: method, parameters: parameter, headers: (Auth_header as! [String : String])
            ) .validate()
            .responseJSON { response in
               
                print(response.data)
            if(Connection.dataHandler(response: response) == nil)
            {
                if(self.showErrorDialog)
                {
                    self.showConnectionErrorMessage()
                }
            }
            
                
                Dialog.hideCircleProgressDialog()
                
                callback(Connection.dataHandler(response: response))
        }
    }

    func startConnectionWithMapping<T:Mappable>(view:UIViewController ,model:T.Type ,url:String , parameter:Dictionary<String, Any>?,callback:@escaping (Mappable) -> Void ){
        
        if(showProgressDialog)
        {
            Dialog.showCircleProgressDialog()
        }
        
        var Auth_header :NSDictionary = [:]
        
        if(Defaults.isUserLogin())
        {
            Auth_header=[ "Authorization" : "Bearer " + (Defaults.getUser().token ?? "")]
         //   Auth_header=[ "X-API-KEY" : Defaults.getUserToken() ]

        }
        else
        {
          //  Auth_header=[ "X-API-KEY" : "1qaz2wsx3edc4rfv5tgb" ]

        }
        
        let urlwithPercentEscapes = url.addingPercentEncoding( withAllowedCharacters: NSCharacterSet.urlQueryAllowed)
        
        URLCache.shared = URLCache(memoryCapacity: 0, diskCapacity: 0, diskPath: nil)

        Alamofire.request(urlwithPercentEscapes!, method: method, parameters: parameter, /*encoding: JSONEncoding.default,*/ headers: (Auth_header as! [String : String])).responseObject { (response: DataResponse<T>) in
            
            Dialog.hideCircleProgressDialog()
            
            let modelResponse = response.result.value
            print( modelResponse?.toJSON())

            if(modelResponse == nil)
            {
                if(self.showErrorDialog)
                {
                    self.showConnectionErrorMessage()
                }
            }
            else
            {
                callback(modelResponse!)
                
            }
            
        }
    }
    
   static func dataHandler(response:DataResponse<Any>)->[String:AnyObject]? {
        
        print("response= \(response)");

        switch response.result {
        case .success( _):
                        
            let dic :[String : AnyObject]=response.result.value as! [String : AnyObject]
            return dic;
            
        case .failure(let error):
            
            print(error.localizedDescription)
            return nil;
        }
        

    }
    
    func convertStringToDictionary(text: String) -> [String:AnyObject]? {
        if let data = text.data(using: String.Encoding.utf8) {
            do {
                return try JSONSerialization.jsonObject(with: data, options: []) as? [String:AnyObject]
            } catch let error as NSError {
                print(error)
                return nil
            }
            catch {
                 return nil
            }
        }
        return nil
    }
    
    func showConnectionErrorMessage() {
    
         // SweetAlert().showAlert("", subTitle: Strings.Data.Connection_Error[Defaults.getLanguageIndex()], style: AlertStyle.error)
        AlertMessages.showMessage(title: "", body: "توجد مشكلة فى الاتصال بالسيرفر", theme: .error)
    }
    

}
