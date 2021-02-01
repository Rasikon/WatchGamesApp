//
//  GamesTableViewController.swift
//  WatchGamesApp
//
//  Created by Rasikon on 28.01.2021.
//

import UIKit

class GamesTableViewController: UITableViewController {
    
    private let urlString = "https://api.twitch.tv/kraken/games/top"
    private var result: Result?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        NetworkManager.shared.fetchData(from: urlString) { games in
            self.result = games
            self.tableView.reloadData()
        }
        
    }
    
    // MARK: - Table view data source
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return result?.top.count ?? 0
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "gameCell", for: indexPath) as! GameCell
        
        let topGame = result?.top[indexPath.row]
        cell.configure(with: topGame)
        return cell
    }
    
}
