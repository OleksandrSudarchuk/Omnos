//
//  ContentView.swift
//  Omnos
//
//  Created by Oleksandr Sudarchuk on 30/05/2025.
//

import UIKit
import SnapKit

class ContentView: UIView {
    //MARK: - Init
    init() {
        super.init(frame: .zero)
        setUpConstrains()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    //MARK: - Create view
    
    private let mainVStack: UIStackView = {
        let stack = UIStackView()
        stack.axis = .vertical
        stack.alignment = .center
        stack.spacing = 10
            return stack
    }()
    
    private let stackViewForCube: UIStackView = {
        let stack = UIStackView()
        stack.axis = .vertical
        return stack
    }()
    
    
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

 private let cubeImageView = CubeImageView()

    
    private let subVStack: UIStackView = {
        let stack = UIStackView()
        stack.axis = .vertical
        stack.spacing = 0
        return stack
    }()
    
    private let topLabel: UILabel = {
        let label = UILabel()
        label.text = "No project yet"
        label.font = .systemFont(ofSize: 20, weight: .semibold)
        label.textAlignment = .center
        label.textColor = .black100
        return label
    }()
    
    private let buttomLabel: UILabel = {
        let label = UILabel()
        label.text = "Your projects will be displayed here."
        label.font = .systemFont(ofSize: 14, weight: .regular)
        label.textAlignment = .center
        label.textColor = .black80
        return label
    }()
}

//MARK: - Private extention
private extension ContentView {
    func setUpConstrains() {
        backgroundColor = .clear
        addSubview(mainVStack)
        
        mainVStack.addArrangedSubview(stackViewForCube)
        stackViewForCube.addArrangedSubview(cubeImageView)
      
        mainVStack.addArrangedSubview(subVStack)
        subVStack.addArrangedSubview(topLabel)
        subVStack.addArrangedSubview(buttomLabel)
        
        mainVStack.snp.makeConstraints { make in
            make.edges.equalToSuperview()
        }
        stackViewForCube.snp.makeConstraints { make in
            make.height.width.equalTo(130)
        }
   
        cubeImageView.snp.makeConstraints { make in
            make.height.width.equalTo(128)
        }
            subVStack.snp.makeConstraints { make in
                make.bottom.equalToSuperview()
                make.height.equalTo(53)
                make.height.equalTo(258)
            }
            topLabel.snp.makeConstraints { make in
                make.height.equalTo(24)
                make.width.equalTo(258)
            }
            buttomLabel.snp.makeConstraints { make in
                make.height.equalTo(21)
                make.width.equalTo(249)
            }
            
        }
    }

