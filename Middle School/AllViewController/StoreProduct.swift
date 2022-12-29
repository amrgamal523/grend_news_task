//
//  StoreProduct.swift
//  Middle School
//
//  Created by amr gamal on 3/16/21.
//  Copyright © 2021 amr gamal. All rights reserved.
//

import UIKit
import ObjectMapper

class StoreProduct: UIViewController ,UICollectionViewDelegate,UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {

    @IBOutlet weak var product_collection: UICollectionView!
    
    var shop_product: [ShopsProducts]?
    var send_product: ShopsProducts?

    
    
    
    var object_product: ProductOfCat?


    var parmc_vc=0
    
    @IBOutlet weak var nav_bar: UINavigationBar!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if parmc_vc==1
        {
            nav_bar.topItem?.title=object_product?.name
            callServerToGetShopProductsCompany()
            
        }else
        {
        nav_bar.topItem?.title="المتجر العام"
            callServerToGetShopProducts()


            
        }

    }
    
    func callServerToGetShopProducts()
      {
          let connection:Connection=Connection()
          connection.method = .post
          
        connection.startConnection(view: self, url: "http://ms4host.org/20gift/companyproducts.php", parameter: ["type":"2"]){ (result) in
              
               
                  self.shop_product=Mapper<ShopsProducts>().mapArray(JSONObject: result!.result.value)
                 self.product_collection.reloadData()
                          
              
                       if self.shop_product?[0].success==true
                          {
                     
                            self.product_collection.isHidden=false

                    
                              
                          }
                               else{
                        self.product_collection.isHidden=true
                                             
                       }
                          
              
    }
      }
    
    
    
    
    
    func callServerToGetShopProductsCompany()
      {
          let connection:Connection=Connection()
          connection.method = .post
          
        connection.startConnection(view: self, url: "http://ms4host.org/20gift/companyproducts.php", parameter: ["type":"0","company_id":object_product?.id ?? ""]){ (result) in
              
               
                  self.shop_product=Mapper<ShopsProducts>().mapArray(JSONObject: result!.result.value)
                 self.product_collection.reloadData()
                          
              
                       if self.shop_product?[0].success==true
                          {
                     
                            self.product_collection.isHidden=false

                    
                              
                          }
                               else{
                        self.product_collection.isHidden=true
                                             
                       }
                          
              
    }
      }

    
    
    
    
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return shop_product?.count ?? 0
     
    }
    
    
        
        func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
           

                let cell:StoreProductCell=collectionView.dequeueReusableCell(withReuseIdentifier: "StoreProductCell", for: indexPath) as! StoreProductCell
             cell.main_vc=self
            cell.getProducts(prod: shop_product![indexPath.row])
                return cell
                

            
        }
        
        
        func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {

            
               // let width  = (view.frame.width-32)/3
                     return CGSize(width: 162, height: 201)
            }
          
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        send_product=shop_product![indexPath.row]
        self.performSegue(withIdentifier: "prodtodetails", sender: self)
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
                  if(segue.identifier == "prodtodetails")
                    {
                        let vc:ProductDetails=segue.destination as! ProductDetails
                    vc.send_product=send_product

                    }
     }
    
    

          
    @IBAction func clickToCart(_ sender: Any) {
        LogHelper.goToViewController(identifier: "Cart", parentVC: self)
    }
    
               
        

      @IBAction func back(_ sender: Any) {
          self.dismiss(animated: true, completion: nil)
      }

}
