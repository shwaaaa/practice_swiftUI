
import SwiftUI

struct Plus: View {
    var body: some View {
        ZStack{
            Color.black.edgesIgnoringSafeArea(.all)
            
                VStack{
                    HStack{
                        Text("새 게시물")
                            .foregroundColor(Color.white)
                            .bold()
                            .padding(.leading,160)
                        Text("다음")
                            .foregroundColor(Color.blue)
                            .padding(.leading,130)
                            .bold()
                    }
                    Image("plus")
                        .resizable()
                        .frame(width: 300,height:300)
                    HStack{
                        Text("최근 항목")
                            .foregroundColor(Color.white)
                            .bold()
                            .padding(.leading,7)
                        Image(systemName: "chevron.down")
                            .resizable()
                            .foregroundColor(Color.white)
                            .frame(width:10,height:5)
                            .bold()
                        Text("임시 저장본")
                            .foregroundColor(Color.gray)
                            .bold()
                            .padding(.leading,10)
                        Spacer()
                        Image(systemName: "square.on.square")
                            .resizable()
                            .frame(width:12,height:12)
                            .foregroundColor(Color.white)
                            .frame(width:27,height:27)
                            .background(Color.gray)
                            .cornerRadius(14)
                        Image(systemName: "camera")
                            .resizable()
                            .frame(width:12,height:12)
                            .foregroundColor(Color.white)
                            .frame(width:27,height:27)
                            .background(Color.gray)
                            .cornerRadius(14)
                    }
                    ScrollView(.vertical){
                        
                        updatePost(post1: "post1", post2: "post2")
                        updatePost(post1: "post1", post2: "post2")
                        updatePost(post1: "post1", post2: "post2")
                        updatePost(post1: "post1", post2: "post2")
                        updatePost(post1: "post1", post2: "post2")
                        updatePost(post1: "post1", post2: "post2")
                }
            }
        }
    }
    @ViewBuilder
    func updatePost(post1: String, post2: String) -> some View {
        HStack{
            Image("\(post1)")
                .resizable()
                .frame(width:90,height:90)
            Image("\(post2)")
                .resizable()
                .frame(width:90,height:90)
            Image("\(post1)")
                .resizable()
                .frame(width:90,height:90)
            Image("\(post2)")
                .resizable()
                .frame(width:90,height:90)
            
        }
    }
}

struct Plus_Previews: PreviewProvider {
    static var previews: some View {
        Plus()
    }
}
