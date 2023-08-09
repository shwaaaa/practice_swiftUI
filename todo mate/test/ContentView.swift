//
//  ContentView.swift
//  test
//
//  Created by 이승화 on 2023/06/29.
//

import SwiftUI
import CoreData


struct ContentView: View {
    @State private var date = Date()
    struct todoList: View {
      var todo: String
      
      var body: some View {
        Text("Todo: \(todo)")
      }
    }

    var body: some View {
        VStack {
            HStack {
                Text("todo mate")
                    .bold()
                
                
                Spacer()
            }
            
            ScrollView(.horizontal) {
                HStack {
                    ForEach(0..<10, id: \.self) { mate in
                        Image("test")
                            .resizable()
                            .frame(width: 50.0, height: 50.0)
                            .clipShape(Circle())
                    }
                }
            }
            VStack {
                HStack {
                    Image("test")
                        .resizable()
                        .frame(width: 50.0, height: 50.0)
                        .clipShape(Circle())
                    VStack {
                        Text("승화")
                            .bold()
                        Text("하하")
                            .font(.system(size:15))
                        
                    }
                    Spacer()
                }
                .padding(.top, 20)
            }
            
            HStack {
                Text("2023년 6월")
                
                Spacer()
            }
            
            DatePicker(
                "Start Date",
                selection: $date,
                displayedComponents: [.date]
            )
            .datePickerStyle(.graphical)
            HStack(spacing: -15){
                Label("할 일", systemImage: "circle")
                    .frame(width: 100)
                    .bold()
                    .background(Color(hue: 1.0, saturation: 0.028, brightness: 0.873))
                    .cornerRadius(50)
                Label("일기", systemImage: "circle")
                    .bold()
                    .background(Color(hue: 1.0, saturation: 0.02, brightness: 0.853))
                    .cornerRadius(50)
            }
            VStack(alignment: .leading, spacing: 10) {
                HStack {
                    Text("📝study")
                        .frame(width: 100)
                        .background(Color(hue: 1.0, saturation: 0.028, brightness: 0.873))
                        .cornerRadius(50)
                }
            }
            VStack {
                List {
                  todoList(todo: "iOS")
                  todoList(todo: "swiftUI")
                  todoList(todo: "UIKit")
                }
            }
                .padding(.top, 10)
            Spacer()
        }
        .padding(.top, 5)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
