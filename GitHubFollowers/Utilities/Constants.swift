//
//  Constants.swift
//  GitHubFollowers
//
//  Created by Arina Postnikova on 2/1/24.
//

import UIKit

enum Titles {
    static let search = "Search"
    static let favorites = "Favorites"
}

enum ButtonTitles: String {
    case getFollowers = "Get Followers"
    case ok = "Ok"
    case soSad = "So Sad"
    case gitHubProfile = "GitHub Profile"
}

enum ButtonImages: String {
    case person = "person"
    case persons = "person.3"
    case checkmark = "checkmark.circle"
}

enum Images {
    static let ghLogo = UIImage(named: "gh-logo")
    static let emptyStateLogo = UIImage(named: "empty-state-logo")
    static let avatarPlaceholder = UIImage(named: "avatar-placeholder")
}

enum SFSymbols {
    static let location = UIImage(systemName: "mappin.and.ellipse")
    static let repos = UIImage(systemName:"folder")
    static let gists = UIImage(systemName:"text.alignleft")
    static let followers = UIImage(systemName:"heart")
    static let following = UIImage(systemName:"person.2")
}

enum AlertTitles: String {
    case emptyUsername = "Empty Username"
    case somethingWentWrong = "Something Went Wrong"
    case invalidUrl = "Invalid URL"
    case noFollowers = "No Followers"
    case unableToRemove = "Unable To Remove"
    case badStuffHappened = "Bad Stuff Happened"
    case success = "Success!"
}

enum AlertMessages {
    static let emptyUsername = "Please enter a username. We need to know who to looking for 🙂."
    static let invalidUrl = "The url attached to this user is invalid."
    static let noFollowers = "This user has no followers. What a shame 😞."
    static let success = "You have successfully favorited this user 🎉."
}

enum DefaultAlert {
    static let title = "Something Went Wrong"
    static let message = "We were unable to complete your task at this time. Please try again."
    static let buttonTitle = "Ok"
}

enum EmptyStateMessages: String {
    case noFavorites = "No Favorites?\nAdd one on the follower screen."
    case noFollowers = "This user doesn't have any followers. Go follow them 😀."
}

enum ItemTitles: String {
    case repos = "Public Repos"
    case gists = "Public Gists"
    case followers = "Followers"
    case following = "Following"
}

enum ReuseIDs {
    static let followerCell = "FollowerCell"
    static let favoriteCell = "FavoriteCell"
}
