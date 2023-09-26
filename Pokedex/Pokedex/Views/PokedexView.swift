//
//  PokedexView.swift
//  Pokedex
//
//  Created by 이승화 on 2023/09/23.
//

import SwiftUI
import Kingfisher

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
                        VStack(alignment: .leading) {
                            Text(entry.name)
                                .font(.headline)
                                .foregroundColor(.white)
                                .padding(.top,8)
                                .padding(.leading)
                                
                            KFImage(URL(string: entry.url))
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 68, height: 68)
                                    .padding([.bottom, .trailing], 4)
                                    .padding(.leading,100)
                        }
                    .background(Color.blue)
                    .cornerRadius(12)
                    .shadow(color: .blue, radius: 6)
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
