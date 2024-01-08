//
//  GFFollowerItemVC.swift
//  GitHubFollowers
//
//  Created by Arina Postnikova on 2/1/24.
//

import UIKit

protocol GFFollowerItemVCDelegate: AnyObject {
    func didTapGetFollowers(for user: User)
}

class GFFollowerItemVC: GFItemInfoVC {
    
    weak var delegate: GFFollowerItemVCDelegate!
    
    init(user: User, delegate: GFFollowerItemVCDelegate) {
        super.init(user: user)
        self.delegate = delegate
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureItems()
    }
    
    private func configureItems() {
        itemInfoViewOne.set(itemInfoType: .followers, with: .followers, withCount: user.followers)
        itemInfoViewTwo.set(itemInfoType: .following, with: .following, withCount: user.following)
        actionButton.set(color: .systemGreen, title: .getFollowers, systemImageName: .persons)
    }
    
    override func actionButtonTapped() {
        delegate.didTapGetFollowers(for: user)
    }
}

