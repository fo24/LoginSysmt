//
//  ViewController.swift
//  Login Systems
//
//  Created by FO24 on 10/8/19.
//  Copyright © 2019 FO24. All rights reserved.
//

import UIKit
import MOLH

class LoginVC: UIViewController {

    @IBOutlet weak var Login: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func Login(_ sender: Any) {
        let alert = UIAlertController(
            title: "Error".localized,
            message: "Title".localized,
            preferredStyle: .alert)
        let dismissButton = UIAlertAction(
            title: "ButtonTitle".localized,
            style: .default,
            handler: nil)
        alert.addAction(dismissButton)
        self.present(alert,animated: true,completion: nil)
    }
    
    @IBAction func OnChangeLanguage(_ sender: Any) {
        MOLH.setLanguageTo(MOLHLanguage.currentAppleLanguage() == "en" ? "ar" :"en")
        MOLH.reset()    }
}

