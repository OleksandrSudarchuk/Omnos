//
//  LoginViewController.swift
//  Omnos
//
//  Created by Oleksandr Sudarchuk on 02/06/2025.
//

import UIKit
import SnapKit

class LoginViewController: UIViewController, UIGestureRecognizerDelegate {
    
    let loginView = LoginView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setLogic()
    }
    override func loadView() {
        view = loginView
    }
}

extension LoginViewController {
    func setLogic() {
        //Hidde "BACK" button at NB and add gesture insted
        self.navigationItem.hidesBackButton = true
        
        self.navigationController?.interactivePopGestureRecognizer?.isEnabled = true
        self.navigationController?.interactivePopGestureRecognizer?.delegate = self
    }
}
