//
//  GreetingRouter.swift
//  VIPERDemo
//
//  Created by MAKOVEY Vladislav on 10.02.2022.
//

import Foundation
import UIKit

protocol GreetingRouterInput {
    func openLoginScreen()
}

class GreetingRouter: GreetingRouterInput {
    weak var rootViewController: UIViewController?
    
    func openLoginScreen() {
        let vc = LoginAssembly.createLoginScreen()
        rootViewController?.present(vc, animated: true, completion: nil)
    }
    
}
