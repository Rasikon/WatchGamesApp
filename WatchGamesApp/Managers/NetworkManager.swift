//
//  NetworkManager.swift
//  WatchGamesApp
//
//  Created by Rasikon on 28.01.2021.
//

import Foundation
import Alamofire

class NetworkManager {
    
    static let shared = NetworkManager()
    
    private let headers: HTTPHeaders = [
        "Client-Id": "sd4grh0omdj9a31exnpikhrmsu3v46",
        "Accept": "application/vnd.twitchtv.v5+json, application/json",
    ]
    
    private init() {}
    
    func fetchData(from urlString: String, completionHandler: @escaping (Result) -> Void) {
        AF.request(urlString,parameters: ["limit": 100], headers: headers)
            .validate()
            .responseDecodable(of: Result.self) { dataResponse in
                switch dataResponse.result {
                case .success(let value):
                    DispatchQueue.main.async {
                        completionHandler(value)
                    }
                case .failure(let error):
                    print(error)
                }
            }
    }
}


