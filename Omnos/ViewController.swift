//
//  ViewController.swift
//  Omnos
//
//  Created by Oleksandr Sudarchuk on 27/05/2025.
//

import UIKit

class ViewController: UIViewController {
    
    let welcomeView = WelcomeView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    override func loadView() {
        view = welcomeView
    }

}

