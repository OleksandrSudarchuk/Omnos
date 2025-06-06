//
//  LoginView.swift
//  Omnos
//
//  Created by Oleksandr Sudarchuk on 02/06/2025.
//

import UIKit
import SnapKit

class LoginView: UIView {
    //MARK: - Init
    init() {
        super.init(frame: .zero)
        setUpView()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    //MARK: - Create view
    
    private let logoImage: UIImageView = {
        let image = UIImageView()
        image.image = UIImage(named: "logo")
        image.contentMode = .scaleAspectFit
        return image
    }()
    
    private let gridImageView: UIImageView = {
        let image = UIImageView()
        image.image = UIImage(named: "backGraoundGrid")
        image.contentMode = .scaleAspectFit
        return image
    }()
    
    private let mainStackView: UIStackView = {
        let stack = UIStackView()
        stack.axis = .vertical
        stack.spacing = 20
        return stack
    }()
    
    private let loginLabel: UILabel = {
        let label  = UILabel()
        label.text = "Login"
        label.textColor = .grey100
        label.font = UIFont.systemFont(ofSize: 24, weight: .semibold)
        label.textAlignment = .left
        return label
    }()
    
    private let emailStackView: UIStackView = {
        let stack = UIStackView()
        stack.axis = .vertical
        stack.spacing = 10
        return stack
    }()
    
    private let emailLabel: UILabel = {
        let label = UILabel()
        label.text = "Email"
        label.textColor = .black60
        label.font =  UIFont.systemFont(ofSize: 14, weight: .regular)
        label.textAlignment = .left
        return label
    }()
    
    private let inputEmail: UITextField = {
        let field = UITextField()
        field.backgroundColor = .grey10
        field.placeholder = "    Enter your email"
        field.textColor = .grey60
        field.textAlignment = .left
        field.keyboardType = .emailAddress
        field.font = UIFont.systemFont(ofSize: 14, weight: .regular)
        field.layer.cornerRadius = 10
        field.layer.masksToBounds = true
        field.autocapitalizationType = .none
        return field
    }()
    
    private let mainPasswordStackView: UIStackView = {
        let stack = UIStackView()
        stack.axis = .vertical
        stack.spacing = 20
        return stack
    }()
    
    private let subPasswordStackView: UIStackView = {
        let stack = UIStackView()
        stack.axis = .vertical
        stack.spacing = 10
        return stack
    }()
    
    private let passwordLabel: UILabel = {
        let label = UILabel()
        label.text = "Password"
        label.textColor = .black60
        label.font = UIFont.systemFont(ofSize: 14, weight: .regular)
        label.textAlignment = .left
        return label
    }()
    
    private let inputPassword: UITextField = {
        let fild = UITextField()
        fild.backgroundColor = .grey10
        fild.placeholder = "   Enter your password"
        fild.textColor = .grey60
        fild.font = UIFont.systemFont(ofSize: 14, weight: .regular)
        fild.isSecureTextEntry = true
        
        fild.layer.cornerRadius = 10
        fild.layer.masksToBounds = true
        
        let eyeImage = UIImageView(image: UIImage(named: "eye"))
        eyeImage.contentMode = .scaleAspectFit
        eyeImage.frame = CGRect(x: -24, y: 0, width: 20, height: 20)
        
        let container = UIView(frame: CGRect(x: 0, y: 0, width: 60, height: 20))
        eyeImage.center = container.center
        container.addSubview(eyeImage)
        
        fild.rightView = container
        fild.rightViewMode = .always
        return fild
    }()
    
    private let forgotpasswordStackView: UIStackView = {
        let stack = UIStackView()
        stack.axis = .vertical
        stack.alignment = .trailing
        return stack
    }()
    
    private let forgotPasswordButton: UIButton = {
        let button = UIButton()
        button.setTitle("Forgot Password", for: .normal)
        button.setTitleColor(.blueButton, for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 14, weight: .semibold)
        return button
    }()
    
    private let loginStackView: UIStackView = {
        let stack = UIStackView()
        stack.axis = .vertical
       stack.distribution = .fillEqually
        stack.spacing = 10
        return stack
    }()
    
    private let loginButton: UIButton = {
        let button = UIButton()
        button.setTitle("Login", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 14, weight: .semibold)
        button.backgroundColor = .blueButton
        button.layer.cornerRadius = 25
        return button
    }()
    
    private let devider: SepratorView = {
        let devider = SepratorView()
        return devider
    }()
    
    private let loginByAppleButton: UIButton = {
        let button = UIButton()
        button.setTitle("Continue with Apple", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.backgroundColor = .black100
        button.titleLabel?.font = UIFont.systemFont(ofSize: 14, weight: .semibold)
        button.layer.cornerRadius = 25
        
        button.setImage(UIImage(systemName: "apple.logo"), for: .normal)
        button.imageView?.contentMode = .scaleAspectFit
        button.tintColor = .white
        button.imageEdgeInsets = UIEdgeInsets(top: 0, left: -8, bottom: 0, right: 8)
        return button
    }()
    
    private let bottomStack: UIStackView = {
        let stack = UIStackView()
        stack.axis = .horizontal
        return stack
    }()
    
    private let singUpLabel: UILabel = {
        let label = UILabel()
        label.text = "Don’t have an account yet?"
        label.font = UIFont.systemFont(ofSize: 14, weight: .regular)
        label.textColor = .black60
        return label
    }()
    
    private let singUpButton: UIButton = {
        let button = UIButton()
        button.setTitle("Sign up", for: .normal)
        button.setTitleColor(.blueButton, for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 14, weight: .semibold)
        return button
    }()
}

private extension LoginView {
    func setUpView() {
        backgroundColor = .white
        //Add View
        addSubview(gridImageView)
        addSubview(logoImage)
        addSubview(mainStackView)
        mainStackView.addArrangedSubview(loginLabel)
        mainStackView.addArrangedSubview(emailStackView)
        emailStackView.addArrangedSubview(emailLabel)
        emailStackView.addArrangedSubview(inputEmail)
        mainStackView.addArrangedSubview(subPasswordStackView)
        mainStackView.addArrangedSubview(mainPasswordStackView)
        mainPasswordStackView.addArrangedSubview(subPasswordStackView)
        subPasswordStackView.addArrangedSubview(passwordLabel)
        subPasswordStackView.addArrangedSubview(inputPassword)
        mainPasswordStackView.addArrangedSubview(forgotpasswordStackView)
        forgotpasswordStackView.addArrangedSubview(forgotPasswordButton)
        mainStackView.addArrangedSubview(loginStackView)
        loginStackView.addArrangedSubview(loginButton)
        loginStackView.addArrangedSubview(devider)
        loginStackView.addArrangedSubview(loginByAppleButton)
        addSubview(bottomStack)
        bottomStack.addArrangedSubview(singUpLabel)
        bottomStack.addArrangedSubview(singUpButton)
        
        //Create constrains
        gridImageView.snp.makeConstraints { make in
            make.height.equalTo(300)
            make.width.equalTo(400)
            make.top.equalToSuperview()
            make.trailing.leading.equalToSuperview().inset(-14)
        }
        
        logoImage.snp.makeConstraints { make in
            make.height.equalTo(38)
            make.width.equalTo(186)
            make.top.equalToSuperview().inset(88)
            make.leading.equalTo(95)
        }
        
        mainStackView.snp.makeConstraints { make in
            make.height.equalTo(438)
            make.width.equalTo(335)
            make.top.equalToSuperview().inset(241)
            make.leading.trailing.equalToSuperview().inset(20)
        }
        
        loginLabel.snp.makeConstraints { make in
            make.height.equalTo(29)
            make.width.equalTo(335)
            make.leading.trailing.top.equalTo(mainStackView)
        }
        
        emailStackView.snp.makeConstraints { make in
            make.height.equalTo(69)
            make.width.equalTo(335)
        }
        
        emailLabel.snp.makeConstraints { make in
            make.height.equalTo(21)
            make.width.equalTo(335)
        }
        
        inputEmail.snp.makeConstraints { make in
            make.height.equalTo(44)
            make.width.equalTo(335)
        }
        mainPasswordStackView.snp.makeConstraints { make in
            make.height.equalTo(111)
            make.width.equalTo(335)
        }
        
        subPasswordStackView.snp.makeConstraints { make in
            make.height.equalTo(69)
            make.width.equalTo(335)
            make.leading.trailing.top.equalTo(mainPasswordStackView)
        }
        
        passwordLabel.snp.makeConstraints { make in
            make.height.equalTo(21)
            make.width.equalTo(335)
        }
        
        inputPassword.snp.makeConstraints { make in
            make.height.equalTo(44)
            make.width.equalTo(335)
        }
        
        forgotpasswordStackView.snp.makeConstraints { make in
            make.height.equalTo(18)
            make.width.equalTo(116)
            make.trailing.equalTo(mainPasswordStackView)
            
        }
        forgotPasswordButton.snp.makeConstraints { make in
            make.height.equalTo(18)
            make.width.equalTo(116)
           
        }
        
        loginStackView.snp.makeConstraints { make in
            make.height.equalTo(157)
            make.width.equalTo(335)
           // make.bottom.equalTo(mainStackView)
        }
        
        loginButton.snp.makeConstraints { make in
            make.height.equalTo(48)
            make.width.equalTo(335)
            
        }
        
        devider.snp.makeConstraints { make in
            make.height.equalTo(21)
            make.width.equalTo(335)
        }
        
        loginByAppleButton.snp.makeConstraints { make in
            make.height.equalTo(48)
            make.width.equalTo(335)
        
        }
        
        bottomStack.snp.makeConstraints { make in
            make.height.equalTo(21)
            make.width.equalTo(240)
            make.bottom.equalToSuperview().inset(32)
            make.leading.equalTo(68)
        }
    }
}

