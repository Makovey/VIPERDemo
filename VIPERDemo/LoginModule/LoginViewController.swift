//
//  LoginViewController.swift
//  VIPERDemo
//
//  Created by MAKOVEY Vladislav on 10.02.2022.
//

import UIKit

protocol LoginViewInput {
    func setResultOfLoginToLabel(result: Bool)
}

protocol LoginViewOutput {
    func loginWithCredentional(login: String?, password: String?)
}

class LoginViewController: UIViewController, LoginViewInput {
    var output: LoginViewOutput?

    @IBOutlet weak var loginTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    @IBOutlet weak var resultLabel: UILabel!
    
    @IBAction func loginButtonPressed(_ sender: UIButton) {
        output?.loginWithCredentional(login: loginTextField.text, password: passwordTextField.text)
    }
    
    func setResultOfLoginToLabel(result: Bool) {
        resultLabel.text = result.description
    }
}
