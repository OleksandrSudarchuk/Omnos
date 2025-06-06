//
//  MainEmptyView.swift .swift
//  Omnos
//
//  Created by Oleksandr Sudarchuk on 30/05/2025.
//

import UIKit
import SnapKit

class MainEmptyView: UIView {
    init() {
        super.init(frame: .zero)
        setUpUI()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    //MARK: - Create view
    
    private let searchBar: UISearchBar = {
        let search = UISearchBar()
        search.searchTextField.backgroundColor = .white
        search.placeholder = "Search"
        search.layer.cornerRadius = 20
        search.layer.masksToBounds = true
        return search
    }()
    
    let contentView = ContentView()
    
    private let newProjectButton: UIButton = {
        let button = UIButton()
        button.setTitle("+   New project", for: .normal)
        button.backgroundColor = UIColor.black100
        button.titleLabel?.textColor = UIColor.white
        button.titleLabel?.font = UIFont.systemFont(ofSize: 14, weight: .semibold)
        button.layer.cornerRadius = 20
        return button
    }()
}

//MARK: - Private extention

private extension MainEmptyView {
    func setUpUI() {
        backgroundColor = .grey10
        addSubview(searchBar)
       addSubview(contentView)
        addSubview(newProjectButton)
        
        searchBar.snp.makeConstraints { make in
            make.height.equalTo(44)
            make.width.equalTo(335)
            make.leading.trailing.equalToSuperview().inset(16)
            make.top.equalToSuperview().inset(110)
        }
        
        contentView.snp.makeConstraints { make in
            make.height.equalTo(215)
            make.width.equalTo(258)
            make.center.equalToSuperview()
        }
        
        newProjectButton.snp.makeConstraints { make in
            make.height.equalTo(44)
            make.width.equalTo(335)
            make.leading.trailing.equalToSuperview().inset(16)
            make.bottom.equalToSuperview().inset(51)
        }
    }
}
