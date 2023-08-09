//
//  DMView.swift
//  instagramCloneApp
//
//  Created by 이승화 on 2023/07/14.
//

import SwiftUI

struct DMView: View {
    @State var searchBar: String = ""
    var body: some View {
        ScrollView(.vertical) {
        VStack {
            HStack {
                Image(systemName: "chevron.left")
                    .resizable()
                    .frame(width:12, height:20)
                    .padding(.leading,20)
                Text("2is.hwa")
                    .font(.system(size: 30))
                    .bold()
                    .padding(.leading,10)
                Text("...")
                    .frame(width:20, height:20)
                    .background(Color.red)
                    .cornerRadius(20)
                    .foregroundColor(Color.white)
                    .padding(.top,5)
                Spacer()
                Image(systemName: "square.and.pencil")
                    .resizable()
                    .frame(width: 23, height:23)
                    .padding(.trailing,20)
            }
            TextField("검색",text: $searchBar)
                .padding()
                .padding(.top,-20)
                .textFieldStyle(.roundedBorder)
            ScrollView(.horizontal) {
                HStack {
                    Image("메모")
                        .resizable()
                        .frame(width:95,height:145)
                        .padding(.leading,10)
                    Image("태윤 메모")
                        .resizable()
                        .frame(width:95,height:155)
                        .padding(.top,-10)
                    Image("겸비 메모")
                        .resizable()
                        .frame(width:95,height:155)
                        .padding(.top,-10)
                    Image("유나 메모")
                        .resizable()
                        .frame(width:95,height:155)
                        .padding(.top,-10)
                    Image("예찬 메모")
                        .resizable()
                        .frame(width:95,height:155)
                        .padding(.top,-10)
                    
                }
            }
            
                HStack {
                    Text("메시지")
                        .font(.system(size:18))
                        .bold()
                        .padding(.leading,13)
                    Spacer()
                    Text("요청")
                        .font(.system(size:15))
                        .foregroundColor(Color.gray)
                        .bold()
                        .padding(.trailing,10)
                }
                
                HStack {
                    Image("스토리 읽은 프사")
                        .resizable()
                        .frame(width: 80, height: 80)
                        .padding(.leading, 8)
                    VStack {
                        Text("지성")
                            .font(.system(size: 15))
                            .padding(.leading,-80)
                        
                        Text("안드로이드 하고싶다  ∙1시간")
                            .font(.system(size:14))
                            .foregroundColor(Color.gray)
                    }
                    Spacer()
                    Image(systemName: "camera")
                        .resizable()
                        .frame(width: 25, height: 20)
                        .foregroundColor(Color .gray)
                        .padding(.trailing)
                    
                }
                HStack {
                    Image("태윤 프사")
                        .resizable()
                        .frame(width: 80, height: 80)
                        .padding(.leading, 8)
                        .padding(.top,-10)
                    VStack {
                        Text("태윤")
                            .font(.system(size: 15))
                            .padding(.leading,-48)
                            .padding(.top,-10)
                        
                        Text("그래그래  ∙3시간")
                            .font(.system(size:14))
                            .foregroundColor(Color.gray)
                    }
                    
                    Spacer()
                    Image(systemName: "camera")
                        .resizable()
                        .frame(width: 25, height: 20)
                        .foregroundColor(Color .gray)
                        .padding(.trailing)
                    
                }
                
                HStack {
                    Image("스토리 읽은 프사")
                        .resizable()
                        .frame(width: 80, height: 80)
                        .padding(.leading, 8)
                        .padding(.top,-10)
                    VStack {
                        Text("예슬")
                            .font(.system(size: 15))
                            .padding(.leading,-90)
                            .padding(.top,-10)
                        
                        Text("ㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋ...  ∙9시간")
                            .font(.system(size:14))
                            .foregroundColor(Color.gray)
                    }
                    
                    Spacer()
                    Image(systemName: "camera")
                        .resizable()
                        .frame(width: 25, height: 20)
                        .foregroundColor(Color .gray)
                        .padding(.trailing)
                    
                }
                
                HStack {
                    Image("스토리 있는 프사")
                        .resizable()
                        .frame(width: 80, height: 80)
                        .padding(.leading, 8)
                        .padding(.top,-10)
                    VStack {
                        Text("김민주")
                            .font(.system(size: 15))
                            .padding(.leading,-125)
                            .padding(.top,-10)
                            .padding(.bottom,-7)
                        HStack {
                            Text("헐 진짜?")
                                .font(.system(size:14))
                            Text("∙23시간")
                                .font(.system(size:14))
                                .foregroundColor(Color .gray)
                            Spacer()
                            Image(systemName: "circle.fill")
                                .resizable()
                                .frame(width: 7, height: 7)
                                .padding(.trailing)
                                .foregroundColor(Color.blue)
                        }
                    }
                    
                    Spacer()
                    Image(systemName: "camera")
                        .resizable()
                        .frame(width: 25, height: 20)
                        .foregroundColor(Color .gray)
                        .padding(.trailing)
                    
                }
                
                HStack {
                    Image("스토리 있는 프사")
                        .resizable()
                        .frame(width: 80, height: 80)
                        .padding(.leading, 8)
                        .padding(.top,-10)
                    VStack {
                        Text("정상혁")
                            .font(.system(size: 15))
                            .padding(.leading,-37)
                            .padding(.top,-10)
                        
                        Text("수요일에 읽음")
                            .font(.system(size:14))
                            .foregroundColor(Color.gray)
                    }
                    
                    Spacer()
                    Image(systemName: "camera")
                        .resizable()
                        .frame(width: 25, height: 20)
                        .foregroundColor(Color .gray)
                        .padding(.trailing)
                    
                }
            
            HStack {
                Image("스토리 읽은 프사")
                    .resizable()
                    .frame(width: 80, height: 80)
                    .padding(.leading, 8)
                VStack {
                    Text("선영")
                        .font(.system(size: 15))
                        .padding(.leading,-38)
                        .padding(.top,-10)
                    
                    Text("수요일에 읽음")
                        .font(.system(size:14))
                        .foregroundColor(Color.gray)
                }
                Spacer()
                Image(systemName: "camera")
                    .resizable()
                    .frame(width: 25, height: 20)
                    .foregroundColor(Color .gray)
                    .padding(.trailing)
                
            }
            
            }
            VStack {
                HStack {
                    Image("스토리 있는 프사")
                        .resizable()
                        .frame(width: 80, height: 80)
                        .padding(.leading, 8)
                        .padding(.top,-10)
                    VStack {
                        Text("겸비")
                            .font(.system(size: 15))
                            .padding(.leading,-38)
                            .padding(.top,-10)
                        
                        Text("화요일에 읽음")
                            .font(.system(size:14))
                            .foregroundColor(Color.gray)
                    }
                    
                    Spacer()
                    Image(systemName: "camera")
                        .resizable()
                        .frame(width: 25, height: 20)
                        .foregroundColor(Color .gray)
                        .padding(.trailing)
                    
                }
                HStack {
                    Image("스토리 읽은 프사")
                        .resizable()
                        .frame(width: 80, height: 80)
                        .padding(.leading, 8)
                    VStack {
                        Text("소윤")
                            .font(.system(size: 15))
                            .padding(.leading,-38)
                            .padding(.top,-10)
                        
                        Text("화요일에 읽음")
                            .font(.system(size:14))
                            .foregroundColor(Color.gray)
                    }
                    Spacer()
                    Image(systemName: "camera")
                        .resizable()
                        .frame(width: 25, height: 20)
                        .foregroundColor(Color .gray)
                        .padding(.trailing)
                    
                }
            }
        }
    }
}

struct DMView_Previews: PreviewProvider {
    static var previews: some View {
        DMView()
    }
}
