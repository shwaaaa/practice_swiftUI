import SwiftUI

struct InformationDetail: View {
    var body: some View {
        VStack {
           
            List {
                ZStack {
                    Rectangle()
                        .frame(height: 230)
                        .foregroundStyle(LinearGradient(colors: [.blue, .gray], startPoint: .leading, endPoint: .trailing))
                    
                    VStack {
                        Image(systemName: "hand.draw.fill")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 60)
                        Text("iPhone 탐색하기")
                            .bold()
                            .font(.system(size: 22))
                            .padding(.vertical, 1)
                        Text("제스쳐 및 버튼을 찾아보고 iPhone을 손쉽게 탐색해 보세요.")
                            .font(.system(size: 12))
                    }
                }
                NavigationLink {
                    Text("홈으로 바로 이동하기 상세")
                } label: {
                    HStack {
                        Image(systemName: "bolt")
                        VStack {
                            Text("홈으로 바로 이동하기")
                                .bold()
                            Text("홈 화면으로 이동하려면 화면 하단 가장자리를 쓸어올리세요")
                        }
                    }
                }
                
                NavigationLink {
                    Text("홈으로 바로 이동하기 상세")
                } label: {
                    HStack {
                        Image(systemName: "bolt")
                        VStack {
                            Text("홈으로 바로 이동하기")
                                .bold()
                            Text("홈 화면으로 이동하려면 화면 하단 가장자리를 쓸어올리세요")
                        }
                    }
                }
                
                NavigationLink {
                    Text("홈으로 바로 이동하기 상세")
                } label: {
                    HStack {
                        Image(systemName: "bolt")
                        VStack {
                            Text("홈으로 바로 이동하기")
                                .bold()
                            Text("홈 화면으로 이동하려면 화면 하단 가장자리를 쓸어올리세요")
                        }
                    }
                }
                
                NavigationLink {
                    Text("홈으로 바로 이동하기 상세")
                } label: {
                    HStack {
                        Image(systemName: "bolt")
                        VStack {
                            Text("홈으로 바로 이동하기")
                            Text("홈 화면으로 이동하려면 화면 하단 가장자리를 쓸어올리세요")
                        }
                    }
                }
            }
            
        }
    }
}

struct InformationDetail_Previews: PreviewProvider {
    static var previews: some View {
        NavigationStack {
            InformationDetail()
        }
    }
}
