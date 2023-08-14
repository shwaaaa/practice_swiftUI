//
//  DiaryStore.swift
//  Diaryyy
//
//  Created by 이승화 on 2023/08/14.
//

import Foundation
import SwiftUI

class DiaryStore: ObservableObject {
    @Published var store: [Content]
    
    init() {
        store = [
            Content(diaryText: "곧 개학이당 ㅎㅎㅎㅎ", year: "2023", month: "08", day: "14"),
            Content(diaryText: "방학식으로 돌아갈래 🥹", year: "2023", month: "08", day: "15"),
            Content(diaryText: "🤸🤸🤸", year: "2007", month: "10", day: "26")
        ]
    }
    
    func addDiary(diaryText: String, year: String, month: String, day: String) {
        let newDiary = Content(diaryText: diaryText, year: year, month: month, day: day)
        store.append(newDiary)
    }
}
