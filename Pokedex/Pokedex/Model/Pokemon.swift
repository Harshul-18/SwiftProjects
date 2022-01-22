//
//  Pokemon.swift
//  Pokedex
//
//  Created by Harshul Nanda on 21/01/22.
//


// MARK: - IMPORTS
import Foundation

struct Pokemon: Decodable, Identifiable {
    // MARK: - PROPERTIES
    let id: Int
    let name: String
    let imageUrl: String
    let type: String
}

// MARK: - TESTING
//let mockPokemon: [Pokemon] = [
//    .init(id: 0, name: "bulbasaur", imageUrl: "bulbasaur", type: "poison"),
//    .init(id: 0, name: "ivysaur", imageUrl: "bulbasaur", type: "poison"),
//    .init(id: 0, name: "squirtle", imageUrl: "bulbasaur", type: "water"),
//    .init(id: 0, name: "wartotle", imageUrl: "bulbasaur", type: "water"),
//    .init(id: 0, name: "charmander", imageUrl: "bulbasaur", type: "fire"),
//    .init(id: 0, name: "charmilion", imageUrl: "bulbasaur", type: "fire"),
//    .init(id: 0, name: "charizard", imageUrl: "bulbasaur", type: "fire")
//]
