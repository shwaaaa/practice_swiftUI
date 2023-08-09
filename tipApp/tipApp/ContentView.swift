import SwiftUI

struct ContentView: View {
    
    @State var searchText: String = ""
    var body: some View {
        NavigationStack {
            List {
                ZStack {
                    Image("아이콘")
                        .frame(height: 200)
                        .scaledToFit()
                    Text("새로운 기능")
                        .bold()
                        .offset(x:-110, y:-90)
                        .font(.system(size: 23))
                        
                }
                
                Section {
                    NavigationLink {
                        InformationDetail()
                    } label: {
                        Image(systemName: "hand.tap")
                            .resizable()
                            .foregroundStyle(.linearGradient(Gradient(colors: [.blue, .white]), startPoint: .leading, endPoint: .trailing))
                            .scaledToFit()
                            .frame(width: 25)
                        Text("iPhone 탐색하기")
                    }
                    
                    NavigationLink {
                        Text("사용자 정보 보호하기 상세")
                    } label: {
                        Image(systemName: "lock.shield")
                            .resizable()
                            .foregroundStyle(.linearGradient(Gradient(colors: [.green, .white]), startPoint: .leading, endPoint: .trailing))
                            .scaledToFit()
                            .frame(width: 25)
                        Text("사용자 정보 보호하기")
                    }
                    
                    NavigationLink {
                        Text("대비하기 상세")
                    } label: {
                        Image(systemName: "heart.text.square")
                            .resizable()
                            .foregroundStyle(.linearGradient(Gradient(colors: [.yellow, .white]), startPoint: .leading, endPoint: .trailing))
                            .scaledToFit()
                            .frame(width: 25)
                        Text("대비하기")
                    }
                    
                    NavigationLink {
                        Text("필수 항목 설정하기 상세")
                    } label: {
                        Image(systemName: "star")
                            .resizable()
                            .foregroundStyle(.linearGradient(Gradient(colors: [.orange, .white]), startPoint: .leading, endPoint: .trailing))
                            .scaledToFit()
                            .frame(width: 25)
                        Text("필수 항목 설정하기")
                    }
                    
                    NavigationLink {
                        Text("iPhone 개인 맞춤화하기 상세")
                    } label: {
                        Image(systemName: "heart")
                            .resizable()
                            .foregroundStyle(.linearGradient(Gradient(colors: [.red, .white]), startPoint: .leading, endPoint: .trailing))
                            .scaledToFit()
                            .frame(width: 25)
                        Text("iPhone 개인 맞춤화하기")
                    }
                    
                } header: {
                    Text("시작하기")
                        .font(.title3)
                        .bold()
                        .foregroundColor(.white)
                }
                Section {
                    NavigationLink {
                        Text("사진 상세")
                    } label: {
                        Image(systemName: "photo.on.rectangle.angled")
                            .resizable()
                            .foregroundStyle(.linearGradient(Gradient(colors: [.purple, .white]), startPoint: .leading, endPoint: .trailing))
                            .scaledToFit()
                            .frame(width: 25)
                        Text("사진")
                    }
                    
                    NavigationLink {
                        Text("카메라 상세")
                    } label: {
                        Image(systemName: "camera")
                            .resizable()
                            .foregroundStyle(.linearGradient(Gradient(colors: [.yellow, .white]), startPoint: .leading, endPoint: .trailing))
                            .scaledToFit()
                            .frame(width: 25)
                        Text("카메라")
                    }
                    
                } header: {
                    Text("사진 및 카메라")
                        .font(.title3)
                        .bold()
                        .foregroundColor(.white)
                }
            }
            .searchable(text: $searchText)
            .navigationTitle("모음")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
