//
//  NetworkManager.swift
//  GitHubFollowers
//
//  Created by Arina Postnikova on 31/12/23.
//

import UIKit

class NetworkManager {
    
    static let shared = NetworkManager()
    
    private let baseURL = "https://api.github.com"
    private let followersPerPage = 100
    
    let cache = NSCache<NSString, UIImage>()
    private let decoder = JSONDecoder()
    
    private init () {
        decoder.keyDecodingStrategy = .convertFromSnakeCase
        decoder.dateDecodingStrategy = .iso8601
    }
    
    func getFollowers(for username: String, page: Int) async throws -> [Follower] {
        let endpoint = baseURL + "/users/\(username)/followers?per_page=\(followersPerPage)&page=\(page)"
        return try await fetchData(endpoint: endpoint)
    }

    func getUserInfo(for username: String) async throws -> User {
        let endpoint = baseURL + "/users/\(username)"
        return try await fetchData(endpoint: endpoint)
    }
    
    func fetchData<T: Decodable>(endpoint: String) async throws -> T {
        guard let url = URL(string: endpoint) else { throw GFError.invalidUsername }
        let (data, response) = try await URLSession.shared.data(from: url)
        guard let response = response as? HTTPURLResponse, response.statusCode == 200 else { throw GFError.invalidResponse }
        
        do {
            return try decoder.decode(T.self, from: data)
        } catch {
            throw GFError.invalidData
        }
    }
    
    func downloadImage(from urlString: String) async -> UIImage? {
        let cacheKey = NSString(string: urlString)
        if let image = cache.object(forKey: cacheKey) { return image }
        guard let url = URL(string: urlString) else { return nil }
        
        do {
            let (data, _) = try await URLSession.shared.data(from: url)
            guard let image = UIImage(data: data) else { return nil }
            cache.setObject(image, forKey: cacheKey)
            return image
        } catch {
            return nil
        }
    }
}
