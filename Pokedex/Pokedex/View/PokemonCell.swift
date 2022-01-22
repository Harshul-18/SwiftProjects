//
//  PokemonCell.swift
//  Pokedex
//
//  Created by Harshul Nanda on 21/01/22.
//

// MARK: - IMPORTS
import SwiftUI
import Kingfisher

struct PokemonCell: View {
    
    // MARK: - PROPERTIES
    
    let pokemon: Pokemon
    let viewModel: PokemonViewModel
    
    // MARK: - BODY
    
    var body: some View {
        ZStack {
            VStack(alignment: .center) {
                Text(pokemon.name.capitalized)
                    .font(.headline)
                    .fontWeight(.bold)
                    .foregroundColor(Color.white)
                    .frame(maxWidth: 250)
                    .padding(.vertical, 8)
                
                HStack {
                    Text(pokemon.type)
                        .font(.subheadline)
                        .fontWeight(.bold)
                        .foregroundColor(Color.white)
                        .padding(.vertical, 8)
                        .padding(.horizontal, 16)
                        .overlay(
                            Capsule().fill(Color.white.opacity(0.25))
                        )
                        .overlay(
                            Capsule().strokeBorder(Color.white, lineWidth: 1)
                        )
                        .frame(width: 90, height: 24)
                    
                    KFImage(URL(string: pokemon.imageUrl))
                        .resizable()
                        .scaledToFit()
                        .frame(width: 60, height: 60)
                        .padding([.bottom, .trailing], 4)
                }
            }
        }
        .padding()
        .background(Color(viewModel.backgroundColor(forType: pokemon.type)))
        .frame(width: 175, height: 144)
        .cornerRadius(22)
        .overlay(
            RoundedRectangle(cornerRadius: 20).strokeBorder(Color.white, lineWidth: 2)
                .frame(width: 175, height: 144)
        )
        .shadow(color: Color(viewModel.backgroundColor(forType: pokemon.type)), radius: 8, x: 0, y: 0)
    }
}
