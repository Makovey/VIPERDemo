//
//  LoginInteractor.swift
//  VIPERDemo
//
//  Created by MAKOVEY Vladislav on 10.02.2022.
//

import Foundation

protocol LoginInteractorInput {
    func loginAccount(withLogin: String, password: String)
}

protocol LoginInteractorOutput: AnyObject {
    func checkCredentionals(isLogged: Bool)
}

class LoginInteractor: LoginInteractorInput {
    weak var output: LoginInteractorOutput?
    
    private let loginService: LoginServiceProtocol
    
    init(loginService: LoginServiceProtocol) {
        self.loginService = loginService
    }
    
    func loginAccount(withLogin login: String, password: String) {
        let user = User(login: login, password: password)
        
        let loggingResult = loginService.isUserLogging(user: user)
        output?.checkCredentionals(isLogged: loggingResult)
    }
}
