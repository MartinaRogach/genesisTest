//
//  NetworkManager.swift
//  GenesisTest
//
//  Created by mrohach on 15.10.2022.
//

import Foundation
import Combine

class NetworkManager {
    
    // MARK: - Public methods
    static func checkFromBack<T: Codable>(url: URL,
                                          method: String,
                                          headers: [String: String],
                                          params: [String: String]) -> AnyPublisher<T, Error> {
        var components = URLComponents(url: url, resolvingAgainstBaseURL: false)!
        components.queryItems = params.map { (key, value) in
                URLQueryItem(name: key, value: value)
            }
        var request = URLRequest(url: components.url!)
        request.httpMethod = method
        request.allHTTPHeaderFields = headers
        return URLSession.shared.dataTaskPublisher(for: request)
            .map(\.data)
            .decode(type: T.self, decoder: JSONDecoder())
            .eraseToAnyPublisher()
    }
}
