//
//  ViewController.swift
//  MultipleLanguage
//
//  Created by Chung on 7/27/18.
//  Copyright © 2018 Chung. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var started: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        started.setTitle(Strings.GETTING_STARTED.localized, for: .normal)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    
    @IBAction func english(_ sender: UIButton) {
        UserDefaults.standard.set("Base", forKey: "locate")
        started.setTitle(Strings.GETTING_STARTED.localized, for: .normal)
    }
    
    @IBAction func vietnamese(_ sender: UIButton) {
        UserDefaults.standard.set("vi", forKey: "locate")
        started.setTitle(Strings.GETTING_STARTED.localized, for: .normal)
    }
    
    @IBAction func action(_ sender: UIButton) {
        let alert = UIAlertController(title: Strings.WELLCOME.localized, message: Strings.THANK_YOU.localized, preferredStyle: .alert)
        let cancelAction = UIAlertAction(title: Strings.CANCEL.localized, style: .cancel, handler: nil)
        let signupAction = UIAlertAction(title: Strings.SIGNUP.localized, style: .default, handler: nil)
        alert.addAction(cancelAction)
        alert.addAction(signupAction)
        present(alert, animated: true, completion: nil)
    }
}

