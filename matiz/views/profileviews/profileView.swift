import SwiftUI

struct profileView: View {
    var body: some View {
        ZStack(alignment: .top){
            ScrollView{
                VStack(spacing: 10){
                    Text("coming soon...")
                }
            }.padding(.top, 80)
            profileheaderView()
        }
    }
}

