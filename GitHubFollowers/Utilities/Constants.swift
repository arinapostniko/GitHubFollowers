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
    case soSad = "So sad"
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

enum ScreenSize {
    static let width = UIScreen.main.bounds.size.width
    static let height = UIScreen.main.bounds.size.height
    static let maxLength = max(ScreenSize.width, ScreenSize.height)
    static let minLength = min(ScreenSize.width, ScreenSize.height)
}

enum DeviceTypes {
    static let idiom = UIDevice.current.userInterfaceIdiom
    static let nativeScale = UIScreen.main.nativeScale
    static let scale = UIScreen.main.scale

    static let isiPhoneSE = idiom == .phone && ScreenSize.maxLength == 568.0
    static let isiPhone8Standard = idiom == .phone && ScreenSize.maxLength == 667.0 && nativeScale == scale
    static let isiPhone8Zoomed = idiom == .phone && ScreenSize.maxLength == 667.0 && nativeScale > scale
    static let isiPhone8PlusStandard = idiom == .phone && ScreenSize.maxLength == 736.0
    static let isiPhone8PlusZoomed = idiom == .phone && ScreenSize.maxLength == 736.0 && nativeScale < scale
    static let isiPhoneX = idiom == .phone && ScreenSize.maxLength == 812.0
    static let isiPhoneXsMaxAndXr = idiom == .phone && ScreenSize.maxLength == 896.0
    static let isiPad = idiom == .pad && ScreenSize.maxLength >= 1024.0

    static func isiPhoneXAspectRatio() -> Bool {
        return isiPhoneX || isiPhoneXsMaxAndXr
    }
}
