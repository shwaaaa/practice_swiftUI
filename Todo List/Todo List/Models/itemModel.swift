//
//  itemModel.swift
//  Todo List
//
//  Created by 이승화 on 2023/08/12.
//

import Foundation

struct ItemModel: Identifiable {
    let id: String = UUID().uuidString
    let title: String
    let isCompleted: Bool
}
