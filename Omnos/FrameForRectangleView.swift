//
//  FrameForRectangleView.swift
//  Omnos
//
//  Created by Oleksandr Sudarchuk on 02/06/2025.
//

import UIKit
import SnapKit

class FrameForRectangleView: UIView {
    //MARK: - Init
    init() {
        super.init(frame: .zero)
        setUpView()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    //MARK: - Create Views
    
    private let leftTopVector: UIImageView = {
        let image = UIImageView()
        image.image = UIImage(named: "leftTopVector")
        return image
    }()
    
    private let rightTopVector: UIImageView = {
        let image = UIImageView()
        image.image = UIImage(named: "rightTopVector")
        return image
    }()
    
    private let leftBottomVector: UIImageView = {
        let image = UIImageView()
        image.image = UIImage(named: "leftBottomVector")
        return image
    }()
    
    private let rightBottomVector: UIImageView = {
        let image = UIImageView()
        image.image = UIImage(named: "rightBottomVector")
        return image
    }()
    private let rectangleView = RectangleView()
}

private extension FrameForRectangleView {
    func setUpView() {
        addSubview(leftTopVector)
        addSubview(rightTopVector)
        addSubview(leftBottomVector)
        addSubview(rightBottomVector)
        addSubview(rectangleView)
        
        leftTopVector.snp.makeConstraints { make in
            make.top.leading.equalTo(rectangleView)
            make.height.width.equalTo(18.89)
        }
        
        rightTopVector.snp.makeConstraints { make in
            make.top.trailing.equalTo(rectangleView)
            make.height.width.equalTo(18.89)
        }
        
        leftBottomVector.snp.makeConstraints { make in
            make.leading.bottom.equalTo(rectangleView)
            make.height.width.equalTo(18.89)
        }
        
        rightBottomVector.snp.makeConstraints { make in
            make.trailing.bottom.equalTo(rectangleView)
            make.height.width.equalTo(18.89)
        }
        
        rectangleView.snp.makeConstraints { make in
            make.width.equalTo(83.47)
            make.height.equalTo(87.06)
            make.centerX.centerY.equalToSuperview()
        }
    }
}
