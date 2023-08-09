
import SwiftUI

struct ProfileView: View {
    var body: some View {
        VStack {
            HStack {
                Text("2is.hwa ")
                    .font(.system(size: 25))
                    .bold()
                    .padding(.leading,15)
                Image(systemName: "chevron.down")
                    .padding(.leading,-5)
                Spacer()
                Image(systemName: "plus.app")
                    .resizable()
                    .frame(width:22,height:22)
                Image(systemName: "line.3.horizontal")
                    .resizable()
                    .frame(width:18,height:18)
                    .padding(.leading)
                    .padding(.trailing)
            }
            ScrollView(.vertical) {
                HStack {
                    Image("read story")
                        .resizable()
                        .frame(width:110,height:110)
                        .padding(.leading,15)
                    VStack {
                        Text("0")
                            .font(.system(size: 17))
                            .foregroundColor(.gray)
                            .padding(.leading,30)
                        Text("게시물")
                            .font(.system(size:15))
                            .padding(.leading,30)
                    }
                    VStack {
                        Text("222")
                            .bold()
                            .font(.system(size: 17))
                            .padding(.leading,30)
                        Text("팔로워")
                            .font(.system(size:15))
                            .padding(.leading,30)
                    }
                    VStack {
                        Text("197")
                            .bold()
                            .font(.system(size: 17))
                            .padding(.leading,30)
                        Text("팔로잉")
                            .font(.system(size:15))
                            .padding(.leading,30)
                    }
                    Spacer()
                }
                Text("승화")
                    .font(.system(size:15))
                    .padding(.trailing,335)
                    .padding(.top,-10)
                Text("@sh1jpp_")
                    .font(.system(size:14))
                    .foregroundColor(.tagColor)
                    .padding(.trailing,298)
                
                HStack {
                    Text("프로필 편집")
                        .font(.system(size:15))
                        .frame(width:150,height:32)
                        .background(Color("white gray"))
                        .cornerRadius(8)
                        .padding(.leading,25)
                        .padding(.top)
                    Text("프로필 공유")
                        .font(.system(size:15))
                        .frame(width:150,height:32)
                        .background(Color("white gray"))
                        .cornerRadius(8)
                        .padding(.top)
                    Image(systemName: "person.badge.plus")
                        .frame(width:32,height:32)
                        .background(Color("white gray"))
                        .cornerRadius(8)
                        .padding(.top)
                    Spacer()
                }
                HStack {
                    Image("하이라이트")
                        .resizable()
                        .frame(width:75,height:90)
                        .padding(.leading,25)
                        .padding(.top,10)
                    Image("하이라이트")
                        .resizable()
                        .frame(width:75,height:90)
                        .padding(.leading,3)
                        .padding(.top,10)
                    Image("하이라이트")
                        .resizable()
                        .frame(width:75,height:90)
                        .padding(.leading,3)
                        .padding(.top,10)
                    Image("make new")
                        .resizable()
                        .frame(width:70,height:85)
                        .padding(.leading,3)
                        .padding(.top,10)
                    Spacer()
                }
                HStack {
                    Image(systemName: "squareshape.split.3x3")
                        .resizable()
                        .frame(width:25,height:25)
                        .padding(.top,25)
                        .padding(.leading,65)
                    Image(systemName: "play.tv")
                        .resizable()
                        .frame(width:25,height:25)
                        .foregroundColor(.gray)
                        .padding(.top,25)
                        .padding(.leading,95)
                    Image(systemName: "person.crop.square")
                        .resizable()
                        .frame(width:25,height:25)
                        .foregroundColor(.gray)
                        .padding(.top,25)
                        .padding(.leading,90)
                    Spacer()
                }
                HStack {
                    Rectangle()
                        .fill(Color.black)
                        .frame(width: 125, height: 1)
                    Rectangle()
                        .fill(Color.gray)
                        .frame(width: 280, height: 1)
                        .padding(.leading,-10)
                    Spacer()
                }
                VStack {
                    Image("nopost")
                        .resizable()
                        .frame(width:120,height:150)
                        .padding(.top,80)
                }
                Spacer()
            }
            
        }
        
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
