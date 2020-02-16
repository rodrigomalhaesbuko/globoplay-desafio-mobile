//
//  ViewController.swift
//  GloboChallenge
//
//  Created by Rodrigo Bukowitz on 16/02/20.
//  Copyright © 2020 Rodrigo Bukowitz. All rights reserved.
//

import UIKit

/*
* A view responsible for displaying a list
* of movies fetched from some movieDB API.
*/
class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .blue
        // Do any additional setup after loading the view.
        
        /* TEST */
        netManager.getTopRatedMovies(in: 2000){ [weak self] (movies, error) in
            if let err = error {
                debugPrint("An error has ocurred trying to get info ", err)
                netManager.state = .error
            }
            guard let movies = movies else { return }
            
            if netManager.enableLogs {
                dump(movies)
            }
            netManager.state = .ready
        }
        /*END TEST*/
    }


}

