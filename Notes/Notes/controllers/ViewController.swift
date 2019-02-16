//
//  ViewController.swift
//  Notes
//
//  Created by Yehor on 1/30/19.
//  Copyright © 2019 Generics. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var LogInEdit: UITextField!
    @IBOutlet weak var PasswordEdit: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        getDataFromServer()
    }

    @IBAction func logInBtnOnClick(_ sender: Any) {
        sendDataToServer()
        if (LogInEdit.text == "Admin" && PasswordEdit.text == "1234") {
            let storyBoard : UIStoryboard = UIStoryboard(name: "Main", bundle:nil)
            
            let nextViewController = storyBoard.instantiateViewController(withIdentifier: "mainPageNavController") as! UINavigationController
            self.present(nextViewController, animated:true, completion:nil)
        }
    }
    
}

