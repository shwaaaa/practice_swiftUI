//
//  DiaryModel.swift
//  Diaryyy
//
//  Created by 이승화 on 2023/08/14.
//

import Foundation
import SwiftUI

class Content: ObservableObject, Identifiable {
    @Published var diaryText: String
    @Published var year: String
    @Published var month: String
    @Published var day: String
    
    let id: UUID
    
    init(diaryText: String, year: String, month: String, day: String) {
        self.diaryText = diaryText
        self.year = year
        self.month = month
        self.day = day
        
        id = UUID()
    }
}
