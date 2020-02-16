//
//  APIRoot.swift
//  GloboChallenge
//
//  Created by Rodrigo Bukowitz on 16/02/20.
//  Copyright © 2020 Rodrigo Bukowitz. All rights reserved.
//

/// representes what the API return to the application
struct APIRoot: Codable {
    var results: [Movie]
}

/// extension to represent all coding keys
extension APIRoot {
    enum CodingKeys: String, CodingKey {
        case results = "results"
    }
}


