//
//  AddView.swift
//  Diaryyy
//
//  Created by 이승화 on 2023/08/14.
//

import SwiftUI

struct AddView: View {
    
    @State private var newDiaryText = ""
    @State private var monthText = ""
    @State private var yearText = ""
    @State private var dayText = ""
    @EnvironmentObject var store: DiaryStore
    @Environment (\.presentationMode) var presentation
    @State private var saveButton = false
    
    var body: some View {
        NavigationView {
            VStack {
                HStack {
                    TextField("  YYYY", text: $yearText)
                        .frame(width:60,height: 35)
                        .overlay(
                            RoundedRectangle(cornerRadius: 15)
                                .stroke(.gray)
                                .frame(width:70)
                        )
                    
                    TextField(" MM", text: $monthText)
                        .frame(width:40,height: 35)
                        .padding(.leading)
                        .overlay(
                            RoundedRectangle(cornerRadius: 15)
                                .stroke(.gray)
                                .frame(width:50)
                                .padding(.leading)
                        )
                
                TextField("  DD", text: $dayText)
                    .frame(width:40,height: 35)
                    .padding(.leading)
                    .overlay(
                        RoundedRectangle(cornerRadius: 15)
                            .stroke(.gray)
                            .frame(width:50)
                            .padding(.leading)
                    )
            }
            
                TextEditor(text: $newDiaryText)
                    .padding()
            }
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    Text("New Diary")
                        .font(.system(size:25, weight: .black))
                }
                
                ToolbarItem {
                    Button {
                        self.saveButton.toggle()
                        saveButtonPressed()
                    } label: {
                        Text("저장")
                    }
                }
            }
            
            Spacer()
        }
    }
    
    func saveButtonPressed() {
        store.addDiary(diaryText: newDiaryText, year: yearText, month: monthText, day: dayText)
        presentation.wrappedValue.dismiss()
    }
}

struct AddView_Previews: PreviewProvider {
    static var previews: some View {
        AddView()
            .environmentObject(DiaryStore())
    }
}
