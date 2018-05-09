//
//  PersonalDetailViewController.swift
//  Swim4Love
//
//  Created by Johnson Zhou on 28/04/2018.
//  Copyright © 2018 Johnson Zhou. All rights reserved.
//

import UIKit

class Swimmer {
    var name: String
    var uid: String
    
    init(name: String, uid: String) {
        self.name = name
        self.uid = uid
    }
    
}

class PersonalDetailViewController: UIViewController {

    var swimmer: Swimmer!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }

}
