//
//  GreetingAssembly.swift
//  VIPERDemo
//
//  Created by MAKOVEY Vladislav on 10.02.2022.
//

import Foundation
import UIKit

class GreetingAssembly {
    static func createGreetingModule() -> UIViewController {
        let view = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "GreetingScreen") as! GreetingViewController
        let router = GreetingRouter()
        let interactor = GreetingInteractor()
        let presenter = GreetingPresenter(router: router, interactor: interactor, view: view)
        
        view.output = presenter
        
        router.rootViewController = view
        
        return view
    }
}
