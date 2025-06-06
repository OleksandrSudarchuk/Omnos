//
//  CubeImageView.swift
//  Omnos
//
//  Created by Oleksandr Sudarchuk on 02/06/2025.
//

import UIKit
import SnapKit

class CubeImageView: UIView {
    //MARK: - Init
    init() {
        super.init(frame: .zero)
        setUpView()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    //MARK: - Create Views
    
    private let vectorImage: UIImageView = {
        let image = UIImageView()
        image.image = UIImage(named: "Frame vector")
        return image
    }()
    
    private let cubeImage: UIImageView = {
        let image = UIImageView()
        image.image = UIImage(named: "cube")
        return image
    }()

}

private extension CubeImageView {
    func setUpView() {
        addSubview(vectorImage)
        addSubview(cubeImage)
    
        vectorImage.snp.makeConstraints { make in
            make.height.width.equalTo(128)
        }
    
        cubeImage.snp.makeConstraints { make in
            make.height.equalTo(87.06)
            make.width.equalTo(83.47)
            make.top.equalTo(vectorImage.snp.top).inset(21)
            make.leading.equalTo(vectorImage.snp.leading).inset(23)
        }

    }
}
