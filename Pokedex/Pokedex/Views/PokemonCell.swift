//
//  PokemonCell.swift
//  Pokedex
//
//  Created by 이승화 on 2023/09/23.
//

import SwiftUI
import Kingfisher

struct PokemonCell: View {
    @State var pokemon = [PokemonEntry]()
    
    var body: some View {
            VStack(alignment: .leading) {
                Text("name")
                    .font(.headline)
                    .foregroundColor(.white)
                    .padding(.top,8)
                    .padding(.leading)
                    
                    Image("1")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 68, height: 68)
                        .padding([.bottom, .trailing], 4)
                        .padding(.leading,100)
            }
        .background(Color.blue)
        .cornerRadius(12)
        .shadow(color: .blue, radius: 6)
        .onAppear {
            PokeApi().getData() { pokemon in
                self.pokemon = pokemon
                print(pokemon)
//                for pokemon in pokemon {
//                    print(pokemon.name)
//                }
            }
        }
    }
}

struct PokemonCell_Previews: PreviewProvider {
    static var previews: some View {
        PokemonCell()
    }
}
