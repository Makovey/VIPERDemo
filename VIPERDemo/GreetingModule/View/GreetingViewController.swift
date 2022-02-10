//
//  ViewController.swift
//  VIPERDemo
//
//  Created by MAKOVEY Vladislav on 08.02.2022.
//

import UIKit

protocol GreetingViewInput {
    var output: GreetingViewOutput? { get set }
    
}

protocol GreetingViewOutput {
    func didButtonTapped()
    
}

class GreetingViewController: UIViewController, GreetingViewInput {
    var output: GreetingViewOutput?

    @IBAction func buttonTapped(_ sender: UIButton) {
        output?.didButtonTapped()
    }
    
}

