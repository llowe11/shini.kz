import SwiftUI

struct profilescreen: View {
    var body: some View {
        ZStack{
            ScrollView{
                VStack{
                    HStack{
                        Text("name surname")
                        Text("profile image")
                    }
                }
            }
        }
    }
}

#Preview {
    profilescreen()
}
