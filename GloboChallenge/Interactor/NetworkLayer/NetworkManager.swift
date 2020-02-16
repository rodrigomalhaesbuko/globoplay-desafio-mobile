//
//  NetworkManager.swift
//  GloboChallenge
//
//  Created by Rodrigo Bukowitz on 16/02/20.
//  Copyright © 2020 Rodrigo Bukowitz. All rights reserved.
//

import Foundation
let netManager = NetworkManager.shared

/// This class resolves all management that requires network conection
///
/// This class is a singleton and can be acesses from anywhere in the code
class NetworkManager {
    
    /// project pattern singleton
    static var shared = NetworkManager()
    
}
