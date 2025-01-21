import SwiftUI

struct profileheaderView: View {
    var body: some View {
        HStack{
            Text("Кабинет")
                .font(.largeTitle)
                .fontWeight(.bold)
            Spacer()
                .frame(width: 165)
        }
        .padding()
        .foregroundColor(.black)
        .frame(maxWidth: .infinity)
        .padding(.top, 35)
        .background(Color.white)
    }
}

