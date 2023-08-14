//
//  ListDetailView.swift
//  Diaryyy
//
//  Created by 이승화 on 2023/08/14.
//

import SwiftUI

struct ListDetailView: View {
    
    @ObservedObject var list: Content
    
    var body: some View {
        VStack {
            Text("\(list.year).\(list.month).\(list.day)")
                .foregroundColor(.secondary)
                .font(.callout)
                .padding(.bottom)
            
            Text(list.diaryText)
            
            Spacer()
        }
    }
}

struct ListDetailView_Previews: PreviewProvider {
    static var previews: some View {
        ListDetailView(list: Content(diaryText: "곧 개학이당ㅎㅎㅎㅎ", year: "2023", month: "08", day: "14"))
    }
}
