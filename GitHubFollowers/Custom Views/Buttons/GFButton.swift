//
//  GFButton.swift
//  GitHubFollowers
//
//  Created by Arina Postnikova on 31/12/23.
//

import UIKit

class GFButton: UIButton {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        configure()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    convenience init(backgroundColor: UIColor, title: ButtonTitles) {
        self.init(frame: .zero)
        self.backgroundColor = backgroundColor
        self.setTitle(title.rawValue, for: .normal)
    }
    
    private func configure() {
        layer.cornerRadius = 10
        
        titleLabel?.font = UIFont.preferredFont(forTextStyle: .headline)
        setTitleColor(.white, for: .normal)
        
        translatesAutoresizingMaskIntoConstraints = false
    }
    
    func set(backgroundColor: UIColor, title: ButtonTitles) {
        self.backgroundColor = backgroundColor
        setTitle(title.rawValue, for: .normal)
    }
}
