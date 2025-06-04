//
//  MainEmptyViewController.swift
//  Omnos
//
//  Created by Oleksandr Sudarchuk on 29/05/2025.
//

import UIKit
import SnapKit

class MainEmptyViewController: UIViewController {
    
    let mainEmptyView = MainEmptyView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    override func loadView() {
        view = mainEmptyView
    }
}

private extension MainEmptyViewController {
    
}
