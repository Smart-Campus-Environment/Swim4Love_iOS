//
//  PersonalViewController.swift
//  Swim4Love
//
//  Created by Johnson Zhou on 28/04/2018.
//  Copyright © 2018 Johnson Zhou. All rights reserved.
//

import UIKit

protocol QRCodeDelegate {
    var QRString: String? { get set }
}

class PersonalViewController: UIViewController, QRCodeDelegate {
   
    var QRString: String? {
        didSet {
            uidTextField.text = QRString
        }
    }
  
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var uidTextField: UITextField!
    
    var swimmer: Swimmer?
    
    @IBAction func scanQRCode(_ sender: UIButton) {
    }
    
    @IBAction func submitButton(_ sender: UIButton) {
        guard let _ = swimmer else {
            swimmer = Swimmer(name: nameTextField.text ?? "", uid: uidTextField.text ?? "")
            return
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "Person" {
            if let vc = segue.destination as? PersonalDetailViewController {
                vc.swimmer = swimmer!
            }
        } else if segue.identifier == "QR" {
            if let vc = segue.destination as?
                QRCameraViewController {
                vc.dataDelegate = self
            }
        }
    }
   
}
