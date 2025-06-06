//
//  SepratorView.swift
//  Omnos
//
//  Created by Oleksandr Sudarchuk on 28/05/2025.
//

import UIKit
import SnapKit

class SepratorView: UIView {
    //MARK: - Init
    init() {
        super.init(frame: .zero)
        configure()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    // Create view
    private let leftSeparator: UIView = {
        let view = UIView()
        view.backgroundColor = .grey20
        return view
    }()
    
    private let rightSeparator: UIView = {
        let view = UIView()
        view.backgroundColor = .grey20
        return view
    }()
    
    private let orLabel: UILabel = {
        let label = UILabel()
        label.text = "Or"
        label.font = .systemFont(ofSize: 14, weight: .regular)
        label.textColor = .black60
        return label
    }()
    
    
}

extension SepratorView {
    // Constrains
    func configure() {
       
        addSubview(leftSeparator)
        addSubview(orLabel)
        addSubview(rightSeparator)
        
        leftSeparator.snp.makeConstraints { make in
            make.centerY.equalTo(orLabel)
            make.leading.equalToSuperview()
            make.trailing.equalTo(orLabel.snp.leading).inset(-8)
            make.height.equalTo(1)
        }
        
        orLabel.snp.makeConstraints { make in
            make.width.equalTo(17)
            make.height.equalTo(21)
            make.center.equalToSuperview()
        }
        
        rightSeparator.snp.makeConstraints { make in
            make.centerY.equalTo(orLabel)
            make.leading.equalTo(orLabel.snp.trailing).inset(-8)
            make.trailing.equalToSuperview()
            make.height.equalTo(1)
        }
        
    }
}




