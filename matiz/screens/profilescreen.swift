import SwiftUI

struct profilescreen: View {
    var body: some View {
        ZStack{
            ScrollView{
                VStack{
                    HStack{
                        Text("profile image")
                        Text("name surname")
                    }
                }
            }
        }
    }
}

#Preview {
    profilescreen()
}
