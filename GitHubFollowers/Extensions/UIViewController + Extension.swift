//
//  UIViewController + Extension.swift
//  GitHubFollowers
//
//  Created by Arina Postnikova on 31/12/23.
//

import UIKit
import SafariServices

extension UIViewController {
    
    func presentGFAlert(title: AlertTitles, message: String, buttonTitle: ButtonTitles) {
        let alertVC = GFAlertVC(title: title.rawValue, message: message, buttonTitle: buttonTitle.rawValue)
        alertVC.modalPresentationStyle = .overFullScreen
        alertVC.modalTransitionStyle = .crossDissolve
        present(alertVC, animated: true)
    }
    
    func presentDefaultError() {
        let alertVC = GFAlertVC(title: DefaultAlert.title, message: DefaultAlert.message, buttonTitle: DefaultAlert.buttonTitle)
        alertVC.modalPresentationStyle = .overFullScreen
        alertVC.modalTransitionStyle = .crossDissolve
        present(alertVC, animated: true)
    }
    
    func presentSafariVC(with url: URL) {
        let safariVC = SFSafariViewController(url: url)
        safariVC.preferredControlTintColor = .systemGreen
        present(safariVC, animated: true)
    }
}
