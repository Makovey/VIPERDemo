//
//  LoginService.swift
//  VIPERDemo
//
//  Created by MAKOVEY Vladislav on 10.02.2022.
//

import Foundation

protocol LoginServiceProtocol {
    func isUserLogging(user: User) -> Bool
}

struct LoginService: LoginServiceProtocol {
    func isUserLogging(user: User) -> Bool {
        return user.login == "1" && user.password == "1"
    }
}

