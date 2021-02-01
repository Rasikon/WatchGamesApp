//
//  GameCell.swift
//  WatchGamesApp
//
//  Created by Rasikon on 30.01.2021.
//


import UIKit
import Kingfisher

class GameCell: UITableViewCell {
    
    @IBOutlet var gameImage: UIImageView!
    @IBOutlet var gameNameLabel: UILabel!
    @IBOutlet var viewersLabel: UILabel!
    @IBOutlet var channelsLabel: UILabel!
    
    
    func configure(with top: Top?) {
        gameNameLabel.text = top?.game.name
        viewersLabel.text = "Viewers: \(top?.viewers ?? 0)"
        channelsLabel.text = "Channels: \(top?.channels ?? 0)"
        self.gameImage.setImage(imageUrl: top?.game.box.large ?? "")
    }
}









