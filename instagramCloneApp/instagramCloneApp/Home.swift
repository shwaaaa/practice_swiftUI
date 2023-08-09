//
//  Home.swift
//  instagramCloneApp
//
//  Created by 이승화 on 2023/07/17.
//

import SwiftUI

struct Home: View {

    var body: some View {
        VStack {
            HStack {
                
                Image("instagram")
                    .resizable()
                    .frame(width:130, height: 45)
                    .padding(.leading,15)
                Spacer()
                NavigationLink {
                    heartAlarm()
                } label: {
                    Image(systemName: "heart")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 25, height: 25)
                        .foregroundColor(.black)
                        .padding(.all, 10)
                }
                
                NavigationLink {
                    DMView()
                } label: {
                    Image(systemName: "paperplane")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 25, height: 25)
                        .foregroundColor(.black)
                        .padding(.all, 10)
                }
            }
                
            ScrollView(.vertical) {
                ScrollView(.horizontal) {
                    VStack {
                        HStack {
                            story(image: "스토리 있는 프사", id: "2is.hwa")
                            story(image: "스토리 있는 프사", id: "kyumbi.md")
                            story(image: "스토리 읽은 프사", id: "zI.su_")
                            VStack {
                                Image("태윤 프사")
                                    .resizable()
                                    .clipShape(Circle())
                                    .frame(width: 80, height: 85)
                                Text("taeyoon_070403")
                                    .font(.system(size:13))
                            }
                            story(image: "스토리 읽은 프사", id: "yena5511")
                        }
                    }
                }
                ScrollView(.vertical) {
                    post(story: "스토리 있는 프사", id: "2is.hwa", image: "게시물", heart: "m2iri", heartnumber: "1,026", time: "2시간 전", introduce: "몇살이게")
                    post(story: "스토리 있는 프사", id: "2is.hwa", image: "게시물2", heart: "yena5511", heartnumber: "2,007", time: "13시간 전", introduce: "귀엽지")
                }
            }
        }
    }
    @ViewBuilder
    func story(image: String, id: String) -> some View {
        VStack {
            Image("\(image)")
                .resizable()
                .frame(width: 80, height: 80)
            Text("\(id)")
                .font(.system(size:13))
        }
    }
    @ViewBuilder
    func post(story: String, id: String, image: String, heart: String, heartnumber: String, time: String, introduce: String) -> some View {
        Rectangle()
            .fill(Color.gray)
            .frame(height: 1)
        HStack {
            Image("\(story)")
                .resizable()
                .frame(width: 35, height: 35)
                .padding(.leading, 10)
            Text("\(id)")
                .bold()
                .padding(.leading,3)
            Spacer()
            Text("...")
                .bold()
                .padding(.trailing,20)
        }
        Image("\(image)")
            .resizable()
            .frame(width: 400, height:400)
        
        HStack {
            Image(systemName: "heart")
                .resizable()
                .frame(width: 22,height:20)
                .padding(.leading,10)
            Image(systemName: "bubble.right")
                .resizable()
                .frame(width: 22,height:20)
                .padding(.leading,5)
            Image(systemName: "paperplane")
                .resizable()
                .frame(width: 22, height: 20)
                .padding(.leading,5)
            Spacer()
            Image(systemName: "bookmark")
                .resizable()
                .frame(width: 18, height: 18)
                .padding(.trailing,20)
        }
        VStack {
            HStack {
                Image("좋아요 누른 사람")
                    .resizable()
                    .frame(width: 40, height:30)
                    .padding(.leading,10)
                Text("\(heart)")
                    .bold()
                    .font(.system(size: 13))
                    .padding(.leading,-7)
                Text("님 외")
                    .font(.system(size: 13))
                    .padding(.leading,-7)
                Text("\(heartnumber)")
                    .bold()
                    .font(.system(size: 13))
                    .padding(.leading,-5)
                Text("이 좋아합니다")
                    .font(.system(size: 13))
                    .padding(.leading,-7)
                Spacer()
            }
            HStack {
                Text("\(id)")
                    .bold()
                    .font(.system(size: 13))
                    .padding(.leading,15)
                    .padding(.top,-10)
                Text("\(introduce)")
                    .font(.system(size: 13))
                    .padding(.leading,-5)
                    .padding(.top,-10)
                Spacer()
            }
            HStack {
                Text("\(time)")
                    .padding(.leading,15)
                    .padding(.top,-5)
                    .font(.system(size: 10))
                    .foregroundColor(.gray)
                Spacer()
        }
    }
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}
