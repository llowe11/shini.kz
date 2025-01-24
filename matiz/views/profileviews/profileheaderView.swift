import SwiftUI

struct profileheaderView: View {
    var body: some View {
        HStack{
            Text("кабинет")
                .font(.largeTitle)
                .fontWeight(.bold)
            Spacer()
                .frame(width: 240)
        }
        .foregroundColor(.black)
        .frame(maxWidth: .infinity)
        .padding(.top, -5)
        .background(Color.white)
    }
}

