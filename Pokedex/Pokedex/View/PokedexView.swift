//
//  PokedexView.swift
//  Pokedex
//
//  Created by Harshul Nanda on 21/01/22.
//

// MARK: - IMPORTS
import SwiftUI

struct PokedexView: View {
    // MARK: - PROPERTIES
    private var gridItems = [GridItem(.flexible(), spacing: 20), GridItem(.flexible(), spacing: 20)]
    @ObservedObject var viewModel = PokemonViewModel()
    
    // MARK: - BODY
    var body: some View {
        NavigationView {
            ScrollView(.vertical, showsIndicators: false) {
                LazyVGrid(columns: gridItems, alignment: .center, spacing: 20) {
                    ForEach( viewModel.pokemon ) { pokemon in
                        PokemonCell(pokemon: pokemon, viewModel: viewModel)
                    }
                }
                .padding(.all, 20)
            }
            .navigationTitle("Pokedex")
        }
    }
}

// MARK: - PREVIEW
struct PokedexView_Previews: PreviewProvider {
    static var previews: some View {
        PokedexView()
    }
}
