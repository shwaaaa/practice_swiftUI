
import SwiftUI

struct ContentView: View {
    @State private var isAirplaneModeOn: Bool = false
    
    var body: some View {
        VStack {
            NavigationView {
                List {
                    Section {
                        NavigationLink {
                            Text("프로필 화면")
                        } label: {
                            profileCell()
                        }
                    }
                    
                    Section {
                        airPlaneToggleCell()
                        
                        wifiTextCell()
                        
                        HStack {
                            Image(systemName: "bolt")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 20, height: 20)
                                .padding(.all, 4)
                                .background(.blue)
                                .foregroundColor(.white)
                                .cornerRadius(4)
                            
                            NavigationLink {
                                Text("bluetooth 화면")
                            } label: {
                                HStack {
                                    Text("Bluetooth")
                                    Spacer()
                                    Text("켬")
                                        .foregroundColor(.gray)
                                }
                            }
                        }
                        
                        plainCell(imageName: "antenna.radiowaves.left.and.right", iconColor: .green, cellTitle: "셀룰러") {
                            Text("셀룰러 화면")
                        }
                        
                        plainCell(imageName: "personalhotspot", iconColor: .green, cellTitle: "개인용 핫스팟") {
                            Text("개인용 핫스팟 화면")
                        }
                    }
                    Section {
                        plainCell(imageName: "bell.badge.fill", iconColor: .orange, cellTitle: "알림") {
                            Text("알림 화면")
                        }
                        
                        plainCell(imageName: "speaker.wave.3.fill", iconColor: .red, cellTitle: "사운드 및 햅틱") {
                            Text("사운드 및 햅틱 화면")
                        }
                       
                        plainCell(imageName: "moon.fill", iconColor: .indigo, cellTitle: "집중 모드") {
                            Text("집중 모드 화면")
                        }
                        
                        plainCell(imageName: "hourglass", iconColor: .indigo, cellTitle: "스크린 타임") {
                            Text("스크린 타임 화면")
                        }
                    }
                    Section {
                        plainCell(imageName: "gear", iconColor: .gray, cellTitle: "일반") {
                            Text("일반 화면")
                        }
                        
                        plainCell(imageName: "gear", iconColor: .gray, cellTitle: "제어 센터") {
                            Text("제어 센터 화면")
                        }
                    }
                }
            }
            .navigationTitle(Text("설정"))
        }
        
    }
    
    
    @ViewBuilder
    private func profileCell() -> some View {
        HStack {
            Image(systemName: "airplane")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 35, height: 35)
                .padding(.all, 4)
                .background(.green)
                .clipShape(Circle())
            VStack(alignment: .leading, spacing: 3) {
                Text("seunghwa")
                    .bold()
                    .font(.system(size: 24))
                Text("Apple ID, iCloud, 미디어 및 구입")
                    .font(.system(size: 14))
            }
            .padding(.leading, 4)
        }
        .padding(.vertical, 10)
    }
    
    @ViewBuilder
    private func airPlaneToggleCell() -> some View {
        HStack {
            Image(systemName: "airplane")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 20, height: 20)
                .padding(.all, 4)
                .background(.yellow)
                .foregroundColor(.white)
                .cornerRadius(4)
            
            Toggle("에어플레인 모드", isOn: $isAirplaneModeOn)
        }
    }
    
    @ViewBuilder
    private func wifiTextCell() -> some View {
        HStack {
            Image(systemName: "wifi")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 20, height: 20)
                .padding(.all, 4)
                .background(.blue)
                .foregroundColor(.white)
                .cornerRadius(4)
            
            NavigationLink {
                Text("와이파이 화면")
            } label: {
                HStack {
                    Text("Wi-Fi")
                    Spacer()
                    Text("SK_WiFiGIGAD98C_5G")
                        .foregroundColor(.gray)
                }
            }
        }
    }
    
    @ViewBuilder
    private func plainCell<V: View>(imageName: String, iconColor: Color, cellTitle: String, destination: @escaping () -> V) -> some View {
        HStack {
            Image(systemName: imageName)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 20, height: 20)
                .padding(.all, 4)
                .background(iconColor)
                .foregroundColor(.white)
                .cornerRadius(4)
            
            NavigationLink(cellTitle) {
                destination()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
