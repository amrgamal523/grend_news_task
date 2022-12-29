//
//  Url.swift
//
//  Created by Amr Elsayed on 1/15/18.
//  Copyright © 2018 Amr Elsayed. All rights reserved.

import Foundation
public class Url {
    static let BaseURL : String = "https://newsapi.org"
    static let ImgUrl : String = ""


  

    static var ArticlesUrl : String = BaseURL + "/v2/everything?q=apple&from=2022-12-26&to=2022-12-26&sortBy=popularity&apiKey=44300869766644a887dac6c5e9213159&page="
    
    static var HeadLinesUrl : String = BaseURL + "/v2/top-headlines?country=us&category=business&apiKey=44300869766644a887dac6c5e9213159&page="

    

}
