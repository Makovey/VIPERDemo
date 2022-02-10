//
//  GreetingPresenter.swift
//  VIPERDemo
//
//  Created by MAKOVEY Vladislav on 10.02.2022.
//

import Foundation

class GreetingPresenter {
    
    private let router: GreetingRouterInput
    
    init(router: GreetingRouterInput) {
        self.router = router
    }
    
}

extension GreetingPresenter: GreetingViewOutput {
    
    func didButtonTapped() {
        router.openLoginScreen()
    }
    
}
