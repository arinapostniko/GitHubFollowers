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
    
    convenience init(color: UIColor, title: ButtonTitles, systemImageName: ButtonImages) {
        self.init(frame: .zero)
        set(color: color, title: title, systemImageName: systemImageName)
    }
    
    private func configure() {
        configuration = .tinted()
        configuration?.cornerStyle = .medium
        
        translatesAutoresizingMaskIntoConstraints = false
    }
    
    func set(color: UIColor, title: ButtonTitles, systemImageName: ButtonImages) {
        configuration?.baseBackgroundColor = color
        configuration?.baseForegroundColor = color
        configuration?.title = title.rawValue
        
        configuration?.image = UIImage(systemName: systemImageName.rawValue)
        configuration?.imagePadding = 6
        configuration?.imagePlacement = .leading
    }
}
