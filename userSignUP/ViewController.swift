//
//  ViewController.swift
//  userSignUP
//
//  Created by Preeti Kesarwani on 10/20/23.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet var nameText: UITextField!
    
    @IBOutlet var passwordText: UITextField!
    
    @IBOutlet var rePasswordText: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func signUpButton(_ sender: UIButton) {
        
        if nameText.text == "" {
            message(text: "Error", message: "User Name Has not Found")
            
        } else if passwordText.text == "" {
            message(text: "Error", message: "Password Has not found")
        } else if passwordText.text  != rePasswordText.text {
            message(text: "Error", message: "Password is not Match")
        } else {
            message(text: "Successfully ", message: "Succesfuly login")
        }
                    
        
        
        
    }
    
    func message(text : String, message : String){
        
        let alert = UIAlertController(title: text, message: message , preferredStyle: .alert)
        
        let okButton = UIAlertAction(title: "OK", style: .default)
        let cancel = UIAlertAction(title: "Cancel", style: .cancel)
        alert.addAction(okButton)
        alert.addAction(cancel)
        present(alert, animated: true)
    }
    
}

