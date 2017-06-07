//
//  ViewController.swift
//  schoolPanel
//
//  Created by Alex on 07.06.17.
//  Copyright © 2017 alguard. All rights reserved.
//

import UIKit
import FirebaseAuth

class ViewController: UIViewController {
    
    @IBOutlet weak var emailText: UITextField!
    @IBOutlet weak var passwordText: UITextField!
    @IBOutlet weak var actionButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func action(_ sender: UIButton) {
        if emailText.text != "" && passwordText.text != "" {
            self.view .endEditing(true)
            Auth.auth().signIn(withEmail: emailText.text!, password: passwordText.text!, completion: { (user, error) in
                if user != nil {
                    print("SUCCESS")
                }
                else {
                    if let myError = error?.localizedDescription {
                        print(myError)
                    }
                    else{
                        print("ERROR")
                    }
                }
                
            })
        }
    }
    
}

