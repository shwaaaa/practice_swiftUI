//
//  ContentView.swift
//  Diaryyy
//
//  Created by 이승화 on 2023/08/14.
//

import SwiftUI

struct DiaryListView: View {
    
    @State private var addButton = false
    @EnvironmentObject var diary: DiaryStore
    
    
    var body: some View {
        VStack {
            NavigationView {
                List {
                    ForEach(diary.store) { diary in
                        NavigationLink {
                            ListDetailView(list: diary)
                        } label: {
                            RowDetailView(list: diary)
                        }
                    }.onDelete(perform: deleteDiary)
                }
                .toolbar{
                    ToolbarItem(placement: .navigationBarLeading){
                        Text("My Diary")
                            .font(.system(size:25, weight: .black))
                    }
                    
                    ToolbarItem {
                        Button {
                            self.addButton.toggle()
                        } label: {
                            Image(systemName: "plus")
                        }.sheet(isPresented: $addButton) {
                            AddView()
                        }
                    }
                }.listStyle(.plain)
            }
        }
        }
    
    func deleteDiary(indexSet: IndexSet) {
        diary.store.remove(atOffsets: indexSet)
    }
}

struct DiaryListView_Previews: PreviewProvider {
    static var previews: some View {
        DiaryListView()
            .environmentObject(DiaryStore())
    }
}
