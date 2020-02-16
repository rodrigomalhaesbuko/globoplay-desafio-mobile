//
//  Movie.swift
//  GloboChallenge
//
//  Created by Rodrigo Bukowitz on 16/02/20.
//  Copyright © 2020 Rodrigo Bukowitz. All rights reserved.
//

import Foundation

/// struct with all information from MovieDB API get response from a movie 
struct Movie: Codable {
    // variables for movies
    var id: Int
    var title: String
    var info: String
    var poster: String?
    
}

/// extension to represent all coding keys
extension Movie {
    enum CodingKeys: String, CodingKey {
        case id
        case title = "title"
        case info = "overview"
        case poster = "poster_path"
    }
}
