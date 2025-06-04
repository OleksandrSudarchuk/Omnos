//
//  LoginViewController.swift
//  Omnos
//
//  Created by Oleksandr Sudarchuk on 02/06/2025.
//

import UIKit
import SnapKit

class LoginViewController: UIViewController {
    
    let loginView = LoginView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    override func loadView() {
        view = loginView
    }
}
