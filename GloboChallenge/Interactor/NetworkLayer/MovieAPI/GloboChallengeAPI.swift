//
//  GloboChallengeAPI.swift
//  GloboChallenge
//
//  Created by Rodrigo Bukowitz on 16/02/20.
//  Copyright © 2020 Rodrigo Bukowitz. All rights reserved.
//

import Foundation
import Moya

/// this protocol list all possibilities that our GloboChalleng API have.
protocol GloboChallengeAPI {
    /// Moya provider that handles all the hard work in Http requests
    var provider: MoyaProvider<MovieDBAPI> { get }
    /**
    Get the Top rated movies from the MovieDB API

    - Parameter genre : The integer representing the genre of the movie if its 0 it applies to all movies genres 
    - Parameter completion : A completion with all the Movies in a array or a response of error
    */
    func getTopRatedMovies(in genre: Int, completion: @escaping ([Movie]?, Error?) -> ())
}
