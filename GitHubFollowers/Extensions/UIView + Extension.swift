//
//  UIView + Extension.swift
//  GitHubFollowers
//
//  Created by Arina Postnikova on 6/1/24.
//

import UIKit

extension UIView {
    
    func addSubviews(_ views: UIView...) {
        for view in views { addSubview(view) }
    }
}
