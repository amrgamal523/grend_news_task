//
//  ProductDetails.swift
//  Middle School
//
//  Created by amr gamal on 3/17/21.
//  Copyright © 2021 amr gamal. All rights reserved.
//

import UIKit
import ObjectMapper
import PopupDialog

class ProductDetails: UIViewController {
    var send_product: ShopsProducts?
    @IBOutlet weak var img: UIImageView!
    @IBOutlet weak var name: UILabel!
    @IBOutlet weak var price: UILabel!
    @IBOutlet weak var desc: UILabel!
    
    var check_message:[CheckMessage]?

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        name.text=send_product?.name ?? ""
           price.text=(send_product?.price ?? "")+"ريال"
    desc.text=send_product?.description ?? ""

           
           ImageDownloader.downloadImage(imageView: img, url: Url.ImgUrl+(send_product?.img ?? "logo") , placeHolder: "logo", showIndicator: true)

    }
    
    
    
   
    func callServerToAddCart()
                 {
                     let connection:Connection=Connection()
                     connection.method = .post
             
          
             
             
                     connection.startConnection(view: self, url: "http://ms4host.org/20gift/addtocart.php", parameter: ["product_id":send_product?.id ?? "","user_id":Defaults.getUser().id ?? "","company_id":send_product?.company_id ?? "" ]){ (result) in
             
                           self.check_message=Mapper<CheckMessage>().mapArray(JSONObject: result!.result.value)
             
             
                         if self.check_message?[0].flag==1
                         {
             
               
                         AlertMessages.showMessage(title: "تم", body: "تمت إضافة المنتج إلي قائمة طلباتك", theme: .success)
                     
                         }
                             
                             
                       else   if self.check_message?[0].flag==0                           {

                               AlertMessages.showMessage(title: "", body:"يمكنك إضافات منتجات لنفس التاجر فقط ", theme: .warning)



                                 }


             
                         
                              else{
             
                             AlertMessages.showMessage(title: "خطأ", body: "توجد مشكلة في الاتصال بالسيرفس", theme: .error)
             
                                                        }
             
             
                     }
                 }
             
         

        
                 
           
           
           
           
                     func showCartLockDialog(animated: Bool = true) {

                                  let ratingVC = LockCart(nibName: "LockCart", bundle: nil)


                                  let popup = PopupDialog(viewController: ratingVC, buttonAlignment: .horizontal, transitionStyle: .bounceDown, tapGestureDismissal: true){
                                    

                                  }

                                  popup.view.backgroundColor=UIColor.clear

                        self.present(popup, animated: animated, completion: nil)

                              }
           
    
    

    
    
    
    
    
    
    @IBAction func clickToAddCart(_ sender: Any) {
        if (Defaults.isUserLogin() == false)
                                             {
                           showCartLockDialog(animated: true)

                                             }
                                  else{
                                      
                   if (send_product?.company_id ??  "") == (Defaults.getUser().id ?? "")
               {
                   AlertMessages.showMessage(title: "", body:"لا يمكنك شراء المنتج الخاص بك", theme: .warning)
                                               
                   }
               else{
                   callServerToAddCart()

                                          
                   }
                                      

                   }
    }
    
    
    @IBAction func clickToCart(_ sender: Any) {
        LogHelper.goToViewController(identifier: "Cart", parentVC: self)
    }
    
               
        

      @IBAction func back(_ sender: Any) {
          self.dismiss(animated: true, completion: nil)
      }

}
