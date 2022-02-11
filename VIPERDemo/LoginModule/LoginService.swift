//
//  LoginService.swift
//  VIPERDemo
//
//  Created by MAKOVEY Vladislav on 10.02.2022.
//

import Foundation

class LoginService {
    static func isUserLogging(user: User) -> Bool {
        if user.login == "1" && user.password == "1" { return true }
        else { return false }
    }
}
