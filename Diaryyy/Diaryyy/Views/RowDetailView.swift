//
//  RowDetailView.swift
//  Diaryyy
//
//  Created by 이승화 on 2023/08/14.
//

import SwiftUI

struct RowDetailView: View {
    
    @ObservedObject var list: Content
    
    var body: some View {
        VStack {
            Text(list.diaryText)
                .font(.body)
            
            Text("\(list.year).\(list.month).\(list.day)")
                .font(.caption2)
        }
    }
}

struct RowDetailView_Previews: PreviewProvider {
    static var previews: some View {
        RowDetailView(list: Content(diaryText: "곧 개학이당ㅎㅎㅎㅎ", year: "2023", month: "08", day: "14"))
    }
}
