//
//  MainMovieTableViewCell.swift
//  GloboChallenge
//
//  Created by Rodrigo Bukowitz on 16/02/20.
//  Copyright © 2020 Rodrigo Bukowitz. All rights reserved.
//

import Foundation
import UIKit

//Custom UITableViewCell that will host aa collectionView
class MainMovieTableViewCell: UITableViewCell {

    // the collection view that will be hosted
    let myCollectionView: UICollectionView = {
        let collectionView = UICollectionView()
        collectionView.backgroundColor = .white
        return collectionView
    }()
    
}
