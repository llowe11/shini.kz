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
                        Text("Name").font(.title3)
                        Text("Surname").font(.title3)
                    }
                }
            }.padding(.top, 80)
            profileheaderView()
        }
    }
}

