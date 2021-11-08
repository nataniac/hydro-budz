//
//  ViewController.swift
//  Hydro-Budz
//
//  Created by Amanda Juarez on 11/8/21.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func Login(_ sender: Any) {
        print("Login")
        let loginAlert = UIAlertController(
            title: "Login",
            message: "Please Enter Your Login Credentials",
            preferredStyle: .alert)
        
        // Dynamically create a text field
        // takes as a parameter a FUNCTION that creates a TextField object
        // and adds the text field to an array called "textfields".
        
        loginAlert.addTextField(configurationHandler: {
            (email:UITextField!) in email.placeholder = "EMAIL"  })
        loginAlert.addTextField(configurationHandler: {
                                    (password:UITextField!) in
                                    password.isSecureTextEntry = true
            password.placeholder = "PASSWORD"
            
        })
        
        loginAlert.addAction(UIAlertAction(
                                title: "Cancel",
                                style: .cancel,
                                handler: nil))
        loginAlert.addAction(UIAlertAction(
                                title: "Submit",
                                style: .default,
                                handler: {
                                    (paramAction:UIAlertAction!) in
                                    if let textFieldArray = loginAlert.textFields {
                                        let textFields = textFieldArray as [UITextField]
                                        let email = textFields[0].text
                                        let password = textFields[1].text
                                        
                                        if(email?.isEmpty == true || ((password?.isEmpty) == true)){
                                            loginAlert.dismiss(animated: true, completion: nil)
                                        }
                                        else{self.performSegue(withIdentifier: "LoggedIn", sender: self)
                                            print(email!, password!)}
                                    }
                                    
                                }
            )
        )
        
        present(loginAlert, animated: true, completion: nil)
        
    }
    

    @IBAction func SignUp(_ sender: Any) {
        print("SignUP")
        let loginAlert = UIAlertController(
            title: "Sign Up",
            message: "Please Enter Your New Login Credentials",
            preferredStyle: .alert)
        
        // Dynamically create a text field
        // takes as a parameter a FUNCTION that creates a TextField object
        // and adds the text field to an array called "textfields".
        
        loginAlert.addTextField(configurationHandler: {
            (email:UITextField!) in email.placeholder = "EMAIL"  })
        loginAlert.addTextField(configurationHandler: {
                                    (password:UITextField!) in
                                    password.isSecureTextEntry = true
            password.placeholder = "PASSWORD"
            
        })
        loginAlert.addTextField(configurationHandler: {
                                    (cpassword:UITextField!) in
                                    cpassword.isSecureTextEntry = true
            cpassword.placeholder = "CONFIRM PASSWORD"
            
        })
        
        loginAlert.addAction(UIAlertAction(
                                title: "Cancel",
                                style: .cancel,
                                handler: nil))
        loginAlert.addAction(UIAlertAction(
                                title: "Submit",
                                style: .default,
                                handler: {
                                    (paramAction:UIAlertAction!) in
                                    if let textFieldArray = loginAlert.textFields {
                                        let textFields = textFieldArray as [UITextField]
                                        let email = textFields[0].text
                                        let password = textFields[1].text
                                        let cpassword = textFields[1].text
                                        
                                        if(email?.isEmpty == true || ((password?.isEmpty) == true || password != cpassword )){
                                            loginAlert.dismiss(animated: true, completion: nil)
                                        }
                                        else{self.performSegue(withIdentifier: "LoggedIn", sender: self)
                                            print(email!, password!)}
                                    }
                                    
                                }
            )
        )
        
        present(loginAlert, animated: true, completion: nil)
    }
}

