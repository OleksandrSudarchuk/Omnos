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
        addTargetsForMainEmtyController()
        addTargetForLoginController() 
    }
    override func loadView() {
        view = welcomeView
    }
  
    @objc func mainEmptyController() {
        let vc = MainEmptyViewController()
        navigationController?.pushViewController(vc, animated: true)
        }
    @objc func loginController() {
        let vc = LoginViewController()
        navigationController?.pushViewController(vc, animated: true)
        }
}
extension ViewController {
    
    func addTargetsForMainEmtyController() {
        welcomeView.topButton.addTarget(self, action: #selector(mainEmptyController), for: .touchUpInside)
    }
    
    func addTargetForLoginController() {
        welcomeView.middleButton.addTarget(self, action: #selector(loginController), for: .touchUpInside)
    }
 
    
}

