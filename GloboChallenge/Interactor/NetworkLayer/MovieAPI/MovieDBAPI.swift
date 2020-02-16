//
//  MovieDBAPI.swift
//  GloboChallenge
//
//  Created by Rodrigo Bukowitz on 16/02/20.
//  Copyright © 2020 Rodrigo Bukowitz. All rights reserved.
//

import Foundation

import Moya

/// This enum represent all the cases from API that handles with all the movieDB api requests, that will assist us to get information in this application
enum MovieDBAPI {
    static let apiKey = "9380a8400a43b80a4276176654c05ab6"
    case topMovies(genre: Int)
}

/// This extension describes all the info for the Target Type , in order to use Moya
extension MovieDBAPI: TargetType {
    
    var baseURL: URL {
        return URL(string: "https://api.themoviedb.org/3/")!
    }
    
    var path: String {
        switch self {
        case .topMovies: return "discover/movie"
        }
    }
    
    var method: Moya.Method {
        switch self {
        case .topMovies: return .get
        }
    }
    
    var sampleData: Data {
        return Data()
    }
    
    var parameters: [String: Any]? {
        var params: [String: Any] = [:]
        switch self {
        case .topMovies(let genre):
            params["api_key"] = MovieDBAPI.apiKey
            params["sort_by"] = "popularity.desc"
            if(genre != 0){
                 params["with_genres"] = genre
            }
        }
        return params
    }
    
    var parameterEncoding: ParameterEncoding {
        return URLEncoding.queryString
    }
    
    var task: Task {
        switch self {
        case .topMovies:
            if let parameters = parameters {
                return .requestParameters(
                    parameters: parameters,
                    encoding: parameterEncoding)
            }
            return .requestPlain
        }
    }
    
    var headers: [String : String]? {
        return ["Content-type": "application/json"]
    }
    
}
