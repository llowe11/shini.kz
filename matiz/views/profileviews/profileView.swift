import SwiftUI

struct profileView: View {
    var body: some View {
        ZStack{
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
