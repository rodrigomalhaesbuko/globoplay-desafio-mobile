//
//  MainMovieTableViewDS.swift
//  GloboChallenge
//
//  Created by Rodrigo Bukowitz on 16/02/20.
//  Copyright © 2020 Rodrigo Bukowitz. All rights reserved.
//

import UIKit
import Foundation

// Data source and delegate for the MainMovieTableview that will be used in this appliction
class MainMovieTableViewDS: NSObject, UITableViewDataSource, UITableViewDelegate {
    var sections: [MovieSection]
    
    // MARK: - Init
    init(with sections: [MovieSection]) {
        self.sections = sections
    }
    
    // MARK: - TableView Methods
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return sections.count
    }
    
    func tableView(_ tableView: UITableView, willDisplayHeaderView view: UIView, forSection section: Int) {
        //apply header backgroundColor
        //apply header textColor
        let header = view as! UITableViewHeaderFooterView
        header.textLabel?.textColor = .white
    }

    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 40.0
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return  380.0
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return sections[section].title
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10;
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "") as? MainMovieTableViewCell else {
            fatalError("Unknow indentifier")
        }

        return cell
        
    }
}
