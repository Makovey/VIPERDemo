//
//  LoginInteractor.swift
//  VIPERDemo
//
//  Created by MAKOVEY Vladislav on 10.02.2022.
//

import Foundation

protocol LoginInteractorInput {
    var output: LoginInteractorOutput? { get set }
    func loginAccount(withLogin: String, password: String)
}

protocol LoginInteractorOutput: AnyObject {
    func isCredentionalsCorrect(isLogged: Bool)
}

class LoginInteractor: LoginInteractorInput {
    weak var output: LoginInteractorOutput?
    
    func loginAccount(withLogin login: String, password: String) {
        let user = User(login: login, password: password)
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 1.5) { [weak self] in
            let loggingResult = LoginService.isUserLogging(user: user)
            self?.output?.isCredentionalsCorrect(isLogged: loggingResult)
        }
    }
}
