import SwiftUI

struct profileView: View {
    var body: some View {
        ZStack(alignment: .top){
            ScrollView{
                VStack{
                    HStack{
                        Text("profile image")
                        Text("name surname")
                        
                    }
                    Text("description")
                    Text("history")
                }
            }
            profileheaderView()
        }
    }
}

#Preview {
    profileView()
}
