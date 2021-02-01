//
//  Game.swift
//  WatchGamesApp
//
//  Created by Rasikon on 28.01.2021.
//

struct Result: Decodable {
    let top: [Top]
}

struct Top: Decodable {
    let channels: Int
    let viewers: Int
    let game: Game
}

struct Game: Decodable {
    let name: String
    let box: Box
}

struct Box: Decodable {
    let large: String
    let medium: String
    let small: String
    let template: String
}

