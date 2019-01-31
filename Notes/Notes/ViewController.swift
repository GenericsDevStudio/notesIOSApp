//
//  ViewController.swift
//  Notes
//
//  Created by Yehor on 1/30/19.
//  Copyright © 2019 Generics. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var label1: UILabel!
    @IBOutlet weak var LogInEdit: UITextField!
    @IBOutlet weak var PasswordEdit: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        label1.text = ""
    }


    @IBAction func LogInAct(_ sender: Any) {
        if LogInEdit.text == "tom.dacenko@gmail.com" && PasswordEdit.text == "0000" {
            label1.text = LogInEdit.text! + PasswordEdit.text!
            LogInEdit.text = ""
            PasswordEdit.text = ""
            // to list
        }
        else {
            label1.text = "WRONG"
            // again
        }
    }
}

