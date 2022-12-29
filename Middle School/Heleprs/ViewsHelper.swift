

import UIKit

class ViewsHelper: NSObject {
    static  func viewDirections(_ v:UIView,lang:String){
        v.semanticContentAttribute = (lang == "ar") ? .forceRightToLeft : .forceLeftToRight
        if v is UILabel{
            if(( v as! UILabel ).textAlignment != .center)
            {
                ( v as! UILabel ).textAlignment = (lang == "ar") ? .right : .left
            }
        }
        if v is UITextField{
            ( v as! UITextField ).textAlignment = (lang == "ar") ?  .right : .left 

        }
//        if v is UIButton{
//                   ( v as! UIButton ).textAlignment = (lang == "ar") ?  .right : .left
//
//               }

        for c in v.subviews{
            viewDirections(c,lang:lang)
        }
    }
}
