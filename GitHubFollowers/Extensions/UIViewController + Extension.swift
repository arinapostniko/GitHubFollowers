//
//  UIViewController + Extension.swift
//  GitHubFollowers
//
//  Created by Arina Postnikova on 31/12/23.
//

import UIKit
import SafariServices

extension UIViewController {
    
    func presentGFAlertOnMainThread(title: AlertTitles, message: String, buttonTitle: ButtonTitles) {
        DispatchQueue.main.async {
            let alertVC = GFAlertVC(title: title.rawValue, message: message, buttonTitle: buttonTitle.rawValue)
            alertVC.modalPresentationStyle = .overFullScreen
            alertVC.modalTransitionStyle = .crossDissolve
            self.present(alertVC, animated: true)
        }
    }
    
    func presentSafariVC(with url: URL) {
        let safariVC = SFSafariViewController(url: url)
        safariVC.preferredControlTintColor = .systemGreen
        present(safariVC, animated: true)
    }
}
