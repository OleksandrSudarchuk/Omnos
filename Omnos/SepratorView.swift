//
//  SepratorView.swift
//  Omnos
//
//  Created by Oleksandr Sudarchuk on 28/05/2025.
//

import UIKit
import SnapKit

class SepratorView: UIView {
    init() {
        super.init(frame: .zero)
        configure()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    let leftSeparator: UIImageView = {
        let image = UIImageView()
        image.image = UIImage(named: "devider")
        return image
    }()
    
    let rightSeparator: UIImageView = {
        let image = UIImageView()
        image.image = UIImage(named: "devider")
        return image
    }()
    
    let orLabel: UILabel = {
        let label = UILabel()
        label.text = "Or"
        label.font = .systemFont(ofSize: 14, weight: .regular)
        label.textColor = .black60
        return label
    }()
    
    let HStack: UIStackView = {
        let stack = UIStackView()
        stack.axis = .horizontal
//        stack.distribution = .fillEqually
//        stack.spacing = 8
        return stack
    }()
}

extension SepratorView {
    func configure() {
        addSubview(HStack)
        HStack.addArrangedSubview(leftSeparator)
        HStack.addArrangedSubview(orLabel)
        HStack.addArrangedSubview(rightSeparator)
        
        HStack.snp.makeConstraints { make in
            make.width.equalTo(335)
            make.height.equalTo(21)
        }
        
        leftSeparator.snp.makeConstraints { make in
            make.width.equalTo(149)
            make.height.equalTo(1)
        }
        
        orLabel.snp.makeConstraints { make in
            make.width.equalTo(17)
            make.height.equalTo(21)
        }
        
        rightSeparator.snp.makeConstraints { make in
            make.width.equalTo(149)
            make.height.equalTo(1)
        }
        
    }
}




