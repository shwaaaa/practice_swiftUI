//
//  PokemonImage.swift
//  Pokedex
//
//  Created by 이승화 on 2023/09/26.
//

import SwiftUI

struct PokemonImage: View {
    var imageLink = ""
    @State private var pokemonSprite = ""
    
    var body: some View {
        AsyncImage(url: URL(string: pokemonSprite))
            .frame(width: 75, height: 75)
            .onAppear {
                let loadData = UserDefaults.standard.string(forKey: imageLink)
                
//                if loadData
            }
    }
    
    func getSprite(url: String) {
        var tempSprite: String?
        
        PokemonSelectedApi().getData(url: url) { sprite in
            tempSprite = sprite.front_defaults
            self.pokemonSprite = tempSprite ?? "placeholder"
        }
    }
}

struct PokemonImage_Previews: PreviewProvider {
    static var previews: some View {
        PokemonImage()
    }
}
