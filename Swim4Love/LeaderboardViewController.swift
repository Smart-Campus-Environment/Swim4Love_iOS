//
//  LeaderboardViewController.swift
//  Swim4Love
//
//  Created by Johnson Zhou on 28/04/2018.
//  Copyright © 2018 Johnson Zhou. All rights reserved.
//

import UIKit
import WebKit

class LeaderboardViewController: UIViewController {

    @IBOutlet weak var webView: WKWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let request = URLRequest(url: URL(string: "https://www.swim4love.com/Swim-For-Love-Project/")!)
        
        webView.load(request)
    }

  
}
