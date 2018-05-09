//
//  ViewController.swift
//  Swim4Love
//
//  Created by Johnson Zhou on 28/04/2018.
//  Copyright © 2018 Johnson Zhou. All rights reserved.
//

import UIKit
import WebKit

class NewsViewController: UIViewController {

    @IBOutlet weak var webView: WKWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let request = URLRequest(url: URL(string: "https://mp.weixin.qq.com/s/xj2dQDIvbfGFfet6msVHTw")!)
        
        webView.load(request)
    }

}

