//
//  Search.swift
//  instagramCloneApp
//
//  Created by 이승화 on 2023/07/17.
//

import SwiftUI

struct Search: View {
    
    @State var searchBar: String = ""
    
    var body: some View {
        ScrollView(.vertical) {
            VStack {
                TextField("검색",text: $searchBar)
                    .padding()
                    .padding(.top,-20)
                    .textFieldStyle(.roundedBorder)
                
                searchPost(post1: "post1", post2: "post2", post3: "post1")
                searchPost(post1: "post2", post2: "post1", post3: "post2")
                searchPost(post1: "post1", post2: "post2", post3: "post1")
                searchPost(post1: "post2", post2: "post1", post3: "post2")
                searchPost(post1: "post1", post2: "post2", post3: "post1")
                searchPost(post1: "post2", post2: "post1", post3: "post2")
                searchPost(post1: "post1", post2: "post2", post3: "post1")
                searchPost(post1: "post2", post2: "post1", post3: "post2")
                
            }
        }
    }
    @ViewBuilder
    func searchPost(post1: String, post2: String, post3: String) -> some View {
        HStack {
            Image("\(post1)")
                .resizable()
                .frame(width: 132,height:132)
                .padding(.top,-15)
            Image("\(post2)")
                .resizable()
                .frame(width: 132,height:132)
                .padding(.top,-15)
                .padding(.leading,-7)
            Image("\(post3)")
                .resizable()
                .frame(width: 132,height:132)
                .padding(.top,-15)
                .padding(.leading,-7)
            Spacer()
        }
    }
}

struct Search_Previews: PreviewProvider {
    static var previews: some View {
        Search()
    }
}
