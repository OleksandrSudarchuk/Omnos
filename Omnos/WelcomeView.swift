//
//  WelcomeView.swift
//  Omnos
//
//  Created by Oleksandr Sudarchuk on 27/05/2025.
//

import UIKit
import SnapKit


class WelcomeView: UIView {
    //MARK: - Init
    init() {
        super.init(frame: .zero)
        setUpView()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    //MARK: - Create views
    private let mainVStack:  UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .vertical
        stackView.distribution = .fillEqually
        stackView.spacing = 10
       stackView.alignment = .center
        return stackView
    }()
    
    private let welcomeLabel: UILabel = {
        let label = UILabel()
        label.text = "Welcome to"
        label.font = UIFont.systemFont(ofSize: 24, weight: .semibold)
        label.textColor = .black100
        label.textAlignment = .center
        return label
    }()
    
    private let logoImageView: UIImageView = {
        let image = UIImageView()
        image.image = UIImage(named: "logo")
        image.contentMode = .scaleAspectFit
        return image
    }()
    private  let topContentLabel: UILabel = {
        let label = UILabel()
        label.text = "You can start scanning immediately and sign up later."
        label.font = UIFont.systemFont(ofSize: 14, weight: .regular)
        label.textAlignment = .center
        label.textColor = .black80
        label.numberOfLines = 0
        return label
    }()
    
     let startButton: UIButton = {
        let button = UIButton()
        button.backgroundColor = .blueButton
        button.setTitle("Let start now", for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 14, weight: .semibold)
        button.layer.cornerRadius = 25
        button.titleLabel?.textColor = .white
        button.titleLabel?.textAlignment = .center
        return button
    }()
    
    private  let separetor = SepratorView()
    
    private  let middelContentLabel: UILabel = {
        let label = UILabel()
        label.text = "Sign up to enjoy exclusive features and access services faster."
        label.font = UIFont.systemFont(ofSize: 14, weight: .regular)
        label.textAlignment = .center
        label.textColor = .black80
        label.numberOfLines = 0
        return label
    }()
    
      let singUpButton: UIButton = {
        let button = UIButton()
        button.setTitle("Sing up", for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 14, weight: .semibold)
        button.setTitleColor(.blueButton, for: .normal)
        button.layer.cornerRadius = 25
        button.layer.borderWidth = 1
        button.layer.borderColor = UIColor.blueButton.cgColor
        return button
    }()
    
    private  let buttomHStack: UIStackView = {
        let stack = UIStackView()
        stack.axis = .horizontal
        stack.alignment = .center
        return stack
    }()
    
    private  let buttomContentLabel: UILabel = {
        let label = UILabel()
        label.text = "Already have an account?"
        label.font = UIFont.systemFont(ofSize: 14, weight: .regular)
        label.textAlignment = .center
        label.textColor = .black60
        return label
    }()
    
       let buttomButton: UIButton = {
        let button = UIButton()
        button.backgroundColor = .clear
        button.setTitle("Login", for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 14, weight: .semibold)
        button.setTitleColor(.blueButton, for: .normal)
        return button
    }()

    
}

//MARK: - Private extention
private extension WelcomeView {
    func setUpView() {
        backgroundColor = .white
        //Add view
        addSubview(mainVStack)
        mainVStack.addArrangedSubview(welcomeLabel)
        mainVStack.addArrangedSubview(logoImageView)
        mainVStack.addArrangedSubview(topContentLabel)
        mainVStack.addArrangedSubview(startButton)
        mainVStack.addArrangedSubview(separetor)
        mainVStack.addArrangedSubview(middelContentLabel)
        mainVStack.addArrangedSubview(singUpButton)
        addSubview(buttomHStack)
        buttomHStack.addArrangedSubview(buttomContentLabel)
        buttomHStack.addArrangedSubview(buttomButton)
        
        //Constraints for view
        mainVStack.snp.makeConstraints { make in
            make.top.bottom.equalToSuperview().inset(220)
            make.leading.trailing.equalToSuperview().inset(-16)
        }
        
        welcomeLabel.snp.makeConstraints { make in
            make.height.equalTo(29)
            make.width.equalTo(139)
        }
        
        logoImageView.snp.makeConstraints { make in
            make.height.equalTo(40)
            make.width.equalTo(200)
        }
        
        topContentLabel.snp.makeConstraints { make in
            make.height.equalTo(42)
            make.width.equalTo(246)
        }
        
        startButton.snp.makeConstraints { make in
            make.height.equalTo(48)
            make.width.equalTo(335)
        }
        
        separetor.snp.makeConstraints { make in
            make.height.equalTo(21)
            make.width.equalTo(335)
        }
        
        middelContentLabel.snp.makeConstraints { make in
            make.height.equalTo(42)
            make.width.equalTo(246)
        }
        
        singUpButton.snp.makeConstraints { make in
            make.height.equalTo(48)
            make.width.equalTo(335)
        }
        
        buttomHStack.snp.makeConstraints { make in
            make.height.equalTo(18)
            make.width.equalTo(216)
            make.leading.equalToSuperview().inset(80)
            make.bottom.equalToSuperview().inset(32)
        }
        
        buttomContentLabel.snp.makeConstraints { make in
            make.height.equalTo(17)
            make.height.equalTo(170)
        }
        
        buttomButton.snp.makeConstraints { make in
            make.height.equalTo(18)
            make.width.equalTo(38)
        }
        
    }
}
