//
//  RectangleView.swift
//  Omnos
//
//  Created by Oleksandr Sudarchuk on 30/05/2025.
//

import UIKit
import SnapKit

class RectangleView: UIView {
    //MARK: - Init
    init() {
        super.init(frame: .zero)
        //setUpView()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    private let leftTopRect: UIImageView = {
        let image = UIImageView()
        image.image = UIImage(named: "leftTopRect")
        return image
    }()
    
    private let rightTopRect: UIImageView = {
        let image = UIImageView()
        image.image = UIImage(named: "rightTopRect")
        return image
    }()
    
    private let bottomRect: UIImageView = {
        let image = UIImageView()
        image.image = UIImage(named: "bottomRect")
        return image
    }()
    
    private let leftTopInsideRect: UIImageView = {
        let image = UIImageView()
        image.image = UIImage(named: "leftTopInsideRect")
        return image
    }()
    
    private let rightTopInsideRect: UIImageView = {
        let image = UIImageView()
        image.image = UIImage(named: "rightTopInsideRect")
        return image
    }()
}

private extension RectangleView {
    func setUpView() {
        addSubview(leftTopRect)
        addSubview(rightTopRect)
        addSubview(bottomRect)
        addSubview(leftTopInsideRect)
        addSubview(rightTopInsideRect)
        
        leftTopRect.snp.makeConstraints { make in
            make.top.left.equalToSuperview()
            make.trailing.equalToSuperview().dividedBy(2)
            make.bottom.equalTo(bottomRect.snp.centerX)
        }
        
        rightTopRect.snp.makeConstraints { make in
            make.trailing.top.equalToSuperview()
            make.leading.equalToSuperview().dividedBy(2)
            make.bottom.equalTo(bottomRect.snp.centerX)
        }
        
        bottomRect.snp.makeConstraints { make in
            make.leading.trailing.equalToSuperview().inset(3)
            make.bottom.equalToSuperview()
            make.top.equalToSuperview().dividedBy(2)
        }
        
        leftTopInsideRect.snp.makeConstraints { make in
            make.centerX.equalTo(leftTopRect.snp.centerX)
            make.centerY.equalTo(leftTopRect.snp.centerY)
        }
        
        rightTopRect.snp.makeConstraints { make in
            make.centerX.equalTo(leftTopRect.snp.centerX)
            make.centerY.equalTo(leftTopRect.snp.centerY)
        }
    }
}
