//
//  PokedexView.swift
//  Pokedex
//
//  Created by 이승화 on 2023/09/23.
//

import SwiftUI

struct PokedexView: View {
    private let gridItems = [GridItem(.flexible()), GridItem(.flexible())]
    @ObservedObject var viewModel = PokemonViewModel()
    var body: some View {
        NavigationView {
            ScrollView {
                LazyVGrid(columns: gridItems, content: {
                    ForEach(viewModel.pokemon) { pokemon in
                        PokemonCell(pokemon: pokemon, viewModel: viewModel)
                    }
                })
            }
            .navigationTitle("Pokedex")
        }
    }
}

struct PokedexView_Previews: PreviewProvider {
    static var previews: some View {
        PokedexView()
    }
}
