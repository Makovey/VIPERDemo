//
//  LoginAssembly.swift
//  VIPERDemo
//
//  Created by MAKOVEY Vladislav on 10.02.2022.
//

import Foundation
import UIKit

class LoginAssembly {
    static func createLoginScreen() -> UIViewController {
        let view = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "LoginScreen") as! LoginViewController
        let router = LoginRouter()
        
        let loginService = LoginService()
        let interactor = LoginInteractor(loginService: loginService)
        let presenter = LoginPresenter(router: router, interactor: interactor, view: view)
        
        interactor.output = presenter
        view.output = presenter
            
        return view
    }
}
