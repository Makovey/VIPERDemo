//
//  GreetingPresenter.swift
//  VIPERDemo
//
//  Created by MAKOVEY Vladislav on 10.02.2022.
//

import Foundation

class GreetingPresenter {
    
    private let router: GreetingRouterInput
    private let interactor: GreetingInteractorInput
    private let view: GreetingViewInput
    
    init(router: GreetingRouterInput, interactor: GreetingInteractorInput, view: GreetingViewInput) {
        self.router = router
        self.interactor = interactor
        self.view = view
    }
    
}

extension GreetingPresenter: GreetingViewOutput {
    
    func didButtonTapped() {
        router.openLoginScreen()
    }
    
}

extension GreetingPresenter: GreetingInteractorOutput {
    
}
