//
//  SignUpViewController.swift
//  Notes
//
//  Created by Yehor on 2/17/19.
//  Copyright © 2019 Generics. All rights reserved.
//

import UIKit

class SignUpViewController: UIViewController {
    
    @IBOutlet weak var loginEditText: UITextField!
    @IBOutlet weak var passwordEditText: UITextField!
    @IBOutlet weak var passwordConfirmEditText: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @IBAction func onSignUpBtnClick(_ sender: Any) {
        let login = loginEditText.text
        let password = passwordEditText.text
        let passwordConfirm = passwordConfirmEditText.text
        if password == passwordConfirm {
            SendSignUpQuery(login!, password!) { result in
                if (result) {
                    DispatchQueue.main.async {
                        self.navigationController?.popViewController(animated: true)
                        self.dismiss(animated: true, completion: nil)
                    }
                }
            }
        }
    }
    
    //override func prepare(for segue: UIStoryboardSegue, sender: Any?) {}

}
