//
//  heartAlarm.swift
//  instagramCloneApp
//
//  Created by 이승화 on 2023/07/13.
//

import SwiftUI

struct heartAlarm: View {
    @State private var ixmmuFollowing = false
    @State private var yenaFollowing = false
    @State private var thumbFollowing = false
    @State private var miriFollowing = false
    
    var body: some View {
        ScrollView(.vertical) {
            VStack {
                HStack {
                    Image(systemName: "chevron.left")
                        .resizable()
                        .frame(width:12, height:20)
                        .padding(.leading,20)
                    Text("알림")
                        .font(.system(size: 30))
                        .bold()
                        .padding(.leading,10)
                    Spacer()
                }
                Text("어제")
                    .font(.system(size: 18))
                    .bold()
                    .padding(.leading, -180)
                    .padding(.top, 5)
                
                HStack {
                    Image("스토리 읽은 프사")
                        .resizable()
                        .frame(width:60, height:60)
                        .padding(.leading,15)
                    
                    Text("ixmmu 님이 회원님을 팔로우하기 시작했습니다.")
                        .font(.system(size: 15))
                    
                    Button {
                        ixmmuFollowing.toggle()
                    } label: {
                        if ixmmuFollowing == false {
                            Text("팔로우")
                                .frame(width: 100, height: 30)
                                .foregroundColor(Color.white)
                                .background(Color.blue)
                                .cornerRadius(10)
                                .padding(.leading,25)
                        } else {
                            Text("팔로잉")
                                .frame(width: 100, height: 35)
                                .foregroundColor(Color.black)
                                .background(Color("white gray"))
                                .cornerRadius(10)
                                .padding(.leading,25)
                        }
                    }
                    
                    Spacer()
                    
                }
                Rectangle()
                    .fill(Color.gray)
                    .frame(height: 1)
                
                Text("이번 주")
                    .font(.system(size: 17))
                    .bold()
                    .padding(.leading, -180)
                    .padding(.top, 5)
                
                HStack {
                    Image("스토리 읽은 프사")
                        .resizable()
                        .frame(width:60, height:60)
                        .padding(.leading,-10)
                    
                    Text("yena5511 님이 회원님을 팔로우하기 시작했습니다.")
                        .font(.system(size: 15))
                    Text("")
                        .font(.system(size: 15))
                        .padding(.leading, -7)
                    
                    
                    Button {
                        yenaFollowing.toggle()
                    } label: {
                        if yenaFollowing == false {
                            Text("팔로우")
                                .frame(width: 100, height: 30)
                                .foregroundColor(Color.white)
                                .background(Color.blue)
                                .cornerRadius(10)
                                .padding(.leading,25)
                        } else {
                            Text("팔로잉")
                                .frame(width: 100, height: 35)
                                .foregroundColor(Color.black)
                                .background(Color("white gray"))
                                .cornerRadius(10)
                                .padding(.leading,25)
                        }
                    }
                }
                
                HStack {
                    Image("태윤 프사")
                        .resizable()
                        .frame(width:60, height:65)
                        .padding(.leading,-10)
                        .padding(.top,-8)
                    Text("taeyoon_070403 님이 회원님의 게시물을 좋아합니다.")
                        .font(.system(size: 15))
                        .padding(.top,-8)
                    Image("게시물")
                        .resizable()
                        .frame(width: 53, height: 50)
                        .padding(.leading,20)
                        .padding(.top,-8)
                }
                HStack {
                    Image("스토리 있는 프사")
                        .resizable()
                        .frame(width:60, height:60)
                        .padding(.leading,-10)
                        .padding(.top,-8)
                    Text("kyumbi.md 님이 회원님의 게시물을 좋아합니다.")
                        .font(.system(size: 15))
                        .padding(.top,-8)
                    Image("게시물2")
                        .resizable()
                        .frame(width: 53, height: 50)
                        .padding(.leading,60)
                        .padding(.top,-8)
                }
                Rectangle()
                    .fill(Color.gray)
                    .frame(height: 1)
                
                HStack {
                    Text("이번 달")
                        .font(.system(size: 17))
                        .bold()
                        .padding(.leading, 20)
                        .padding(.top, 5)
                    Spacer()
                }
            }
            
            VStack {
                HStack {
                    Image("스토리 읽은 프사")
                        .resizable()
                        .frame(width:60, height:60)
                        .padding(.leading,-10)
                        .padding(.top,-8)
                    
                    Text("th._.castle 님이 회원님을 팔로우하기 시작했습니다.")
                        .font(.system(size: 15))
                        .padding(.top,-8)
                    
                    Button {
                        thumbFollowing.toggle()
                    } label: {
                        if thumbFollowing == false {
                            Text("팔로우")
                                .frame(width: 100, height: 30)
                                .foregroundColor(Color.white)
                                .background(Color.blue)
                                .cornerRadius(10)
                                .padding(.leading,25)
                        } else {
                            Text("팔로잉")
                                .frame(width: 100, height: 35)
                                .foregroundColor(Color.black)
                                .background(Color("white gray"))
                                .cornerRadius(10)
                                .padding(.leading,25)
                        }
                    }
                }
                HStack {
                    Image("스토리 있는 프사")
                        .resizable()
                        .frame(width:60, height:65)
                        .padding(.leading,15)
                        .padding(.top,-8)
                    Text("m2iri 님이 회원님의 게시물을 좋아합니다.")
                        .font(.system(size: 15))
                        .padding(.top,-8)
                    Image("게시물")
                        .resizable()
                        .frame(width: 53, height: 50)
                        .padding(.leading,95)
                        .padding(.top,-8)
                    Spacer()
                }
                
                HStack {
                    Image("스토리 있는 프사")
                        .resizable()
                        .frame(width:60, height:60)
                        .padding(.leading,15)
                        .padding(.top,-8)
                    
                    Text("m2iri 님이 회원님을 팔로우하기 시작했습니다.")
                        .font(.system(size: 15))
                        .padding(.top,-8)
                    
                    Button {
                        miriFollowing.toggle()
                    } label: {
                        if miriFollowing == false {
                            Text("팔로우")
                                .frame(width: 100, height: 30)
                                .foregroundColor(Color.white)
                                .background(Color.blue)
                                .cornerRadius(10)
                                .padding(.leading,25)
                        } else {
                            Text("팔로잉")
                                .frame(width: 100, height: 35)
                                .foregroundColor(Color.black)
                                .background(Color("white gray"))
                                .cornerRadius(10)
                                .padding(.leading,25)
                        }
                    }
                    Spacer()
                }
                
                HStack {
                    Image("스토리 읽은 프사")
                        .resizable()
                        .frame(width:60, height:60)
                        .padding(.leading,-15)
                        .padding(.top,-8)
                    Text("_xodus_7 님이 회원님의 게시물을 좋아합니다.")
                        .font(.system(size: 15))
                        .padding(.top,-8)
                    Image("게시물2")
                        .resizable()
                        .frame(width: 53, height: 50)
                        .padding(.leading,65)
                        .padding(.top,-8)
                }
                
                HStack {
                    Image("스토리 읽은 프사")
                        .resizable()
                        .frame(width:60, height:60)
                        .padding(.leading,-10)
                        .padding(.top,-8)
                    Text("ye_dhns 님이 회원님의 게시물을 좋아합니다.")
                        .font(.system(size: 15))
                        .padding(.top,-8)
                    Image("게시물2")
                        .resizable()
                        .frame(width: 53, height: 50)
                        .padding(.leading,73)
                        .padding(.top,-8)
                }
            }
        }
            
           
        
    }
}

struct heartAlarm_Previews: PreviewProvider {
    static var previews: some View {
        heartAlarm()
    }
}
