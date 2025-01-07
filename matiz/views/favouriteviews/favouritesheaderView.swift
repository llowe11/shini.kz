import SwiftUI

struct favouritesheaderView: View {
    var body: some View {
        HStack{
            Text("избранное")
                .font(.largeTitle)
                .fontWeight(.bold)
            Spacer()
                .frame(width: 187)
            
            Text("")
                
            
        }
        .padding()
            .foregroundColor(.black)
            .frame(maxWidth: .infinity)
            .padding(.top, 35)
            .background(Color.white)
    }
}

