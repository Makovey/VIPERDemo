//
//  LoginPresenter.swift
//  VIPERDemo
//
//  Created by MAKOVEY Vladislav on 10.02.2022.
//

import Foundation

class LoginPresenter {
    private let interactor: LoginInteractorInput
    private let view: LoginViewInput
    
    init(interactor: LoginInteractorInput, view: LoginViewInput) {
        self.interactor = interactor
        self.view = view
    }
}

extension LoginPresenter: LoginViewOutput {
    func loginWithCredentional(login: String, password: String) {
        interactor.loginAccount(withLogin: login, password: password)
    }
    
}

extension LoginPresenter: LoginInteractorOutput {
    func isCredentionalsCorrect(isLogged: Bool) {
        view.setResultOfLoginToLabel(result: isLogged)
    }
}
