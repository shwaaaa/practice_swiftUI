import SwiftUI

extension Color {
    static let tagColor = Color("tag")
    static let whitegrayColor = Color("whitegray")
}

struct ContentView: View {
    var body: some View {
        
        HStack {
            TabView {
                Home()
                    .tabItem{
                        VStack{
                            Image(systemName: "house")
                        }
                    }
                
                Search()
                    .tabItem{
                        VStack{
                            Image(systemName: "magnifyingglass")
                        }
                            }
                
                Plus()
                    .tabItem{
                        VStack{
                            Image(systemName: "plus.app")
                        }
                    }
                
                Vidieo()
                    .tabItem{
                        VStack{
                            Image(systemName: "play.tv")
                        }
                    }

                ProfileView()
                    .tabItem{
                        VStack{
                            Image(systemName: "person")
                        }
                    }
                }
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationStack{
            ContentView()
        }
    }
}
