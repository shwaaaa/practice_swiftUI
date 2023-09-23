//
//  PokemonModel.swift
//  Pokedex
//
//  Created by 이승화 on 2023/09/23.
//

import Foundation

struct Pokemon: Decodable, Identifiable {
    let id: Int
    let name: String
    let imageUrl: String
    let type: String
}

let MOCK_POKEMON: [Pokemon] = [
    .init(id: 0, name: "Bulbasaur", imageUrl: "1", type: "position"),
    .init(id: 1, name: "Ivysaur", imageUrl: "1", type: "position"),
    .init(id: 2, name: "Vensaur", imageUrl: "1", type: "position"),
    .init(id: 3, name: "Charmander", imageUrl: "1", type: "position"),
    .init(id: 4, name: "Charmeleon", imageUrl: "1", type: "position"),
    .init(id: 5, name: "Charizard", imageUrl: "1", type: "position")
]
