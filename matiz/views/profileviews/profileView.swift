import SwiftUI

struct profileView: View {
    var body: some View {
        ZStack(alignment: .top){
            ScrollView{
                VStack(spacing: 10){
                    HStack{
                        Circle().frame(width: 140,height: 140)
                    }
                    HStack(spacing: 10){
                        Text("name").font(.title3)
                        Text("surname").font(.title3)
                    }
                    Divider()
                    VStack{
                        Text("rating")
                        Text("categories")
                    }
                    VStack{
                        Text("advertisements")
                    }
                }
            }.padding(.top, 80)
            profileheaderView()
        }
    }
}

