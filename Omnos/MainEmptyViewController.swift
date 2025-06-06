//
//  MainEmptyViewController.swift
//  Omnos
//
//  Created by Oleksandr Sudarchuk on 29/05/2025.
//

import UIKit
import SnapKit

class MainEmptyViewController: UIViewController, UIGestureRecognizerDelegate {
    
    let mainEmptyView = MainEmptyView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setLogic()
        setView()
    }
    override func loadView() {
        view = mainEmptyView
        
    
    }
    let logoView = UIImageView(image: UIImage(named: "logo"))
    let avatarImage = UIImageView(image: UIImage(named: "avatar"))
}

private extension MainEmptyViewController {
    func setLogic() {
        //Hidde "BACK" button at NB and add gesture insted
        self.navigationItem.hidesBackButton = true
        
        self.navigationController?.interactivePopGestureRecognizer?.isEnabled = true
        self.navigationController?.interactivePopGestureRecognizer?.delegate = self
        
        
        //Iplement image to left corner NB
        let logoItem = UIBarButtonItem(customView: logoView )
        self.navigationItem.leftBarButtonItem = logoItem
        
        
        //Implement image with avatar to right corner NB
        let avatarImage = UIBarButtonItem(customView: avatarImage)
        self.navigationItem.rightBarButtonItem = avatarImage
    }
    
    func setView() {
        //Make constrains
        
        // Logo
        logoView.contentMode = .scaleAspectFit
        
        logoView.snp.makeConstraints { make in
            make.height.equalTo(24)
            make.width.equalTo(120)
        }
        
        
        //Avatar
        avatarImage.contentMode = .scaleAspectFit
        avatarImage.layer.cornerRadius = 20
        
        avatarImage.snp.makeConstraints { make in
            make.height.width.equalTo(40)
        }
    }
}
