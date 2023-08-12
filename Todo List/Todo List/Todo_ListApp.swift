//
//  Todo_ListApp.swift
//  Todo List
//
//  Created by 이승화 on 2023/08/12.
//

import SwiftUI

@main
struct Todo_ListApp: App {
    
    @StateObject var listViewModel: ListViewModel = ListViewModel()
    
    var body: some Scene {
        WindowGroup {
            NavigationView {
                ListView()
            }
            .environmentObject(listViewModel)
        }
    }
}
