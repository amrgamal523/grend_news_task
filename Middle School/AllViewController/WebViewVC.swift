//
//  WebViewVC.swift
//  Middle School
//
//  Created by amr gamal on 28/12/2022.
//  Copyright © 2022 amr gamal. All rights reserved.
//

import UIKit
import WebKit


class WebViewVC: UIViewController,WKNavigationDelegate{

    var url_art=""
    @IBOutlet weak var web_view: WKWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let url = URL(string: url_art)!
        web_view.load(URLRequest(url: url))
        web_view.allowsBackForwardNavigationGestures = true
    }
  
    
    @IBAction func back(_ sender: Any) {
        self.dismiss(animated: true)
    }
    

}
