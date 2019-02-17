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
    }

    @IBAction func logInBtnOnClick(_ sender: Any) {
        let login = LogInEdit.text
        let password = PasswordEdit.text
        SendAuthQuery(login!, password!) { result in
            print(result.userId)
            currentUser = User(Int(result.userId)!, login!, password!)
            if result.userId != "0" {
                DispatchQueue.main.async {
                    self.logInApp()
                }
            }
        }
    }
    
    func logInApp() {
        let storyBoard : UIStoryboard = UIStoryboard(name: "Main", bundle:nil)
        let nextViewController = storyBoard.instantiateViewController(withIdentifier: "mainPageNavController") as! UINavigationController
        self.present(nextViewController, animated:true, completion:nil)
    }
    
}
