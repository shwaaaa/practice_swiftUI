//
//  PokedexView.swift
//  Pokedex
//
//  Created by 이승화 on 2023/09/23.
//

import SwiftUI

struct PokedexView: View {
    private let gridItems = [GridItem(.flexible()), GridItem(.flexible())]
    @State var pokemon = [PokemonEntry]()
    @State var searchText = ""
    var body: some View {
        NavigationView {
            ScrollView {
                LazyVGrid(columns: gridItems, content: {
                    ForEach(searchText == "" ? pokemon : pokemon.filter({
                        $0.name.contains(searchText.lowercased())
                    })) { entry in
                        PokemonCell()
                    }
                })
                .searchable(text: $searchText)
                .onAppear {
                    PokeApi().getData() { pokemon in
                        self.pokemon = pokemon
                        
                        for pokemon in pokemon {
                            print(pokemon.name)
                        }
                    }
                }
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
