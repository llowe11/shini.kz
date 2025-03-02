import SwiftUI

struct chatheaderView: View {
    var body: some View {
        HStack{
            Text("сообщения")
                .font(.largeTitle)
                .fontWeight(.bold)
            Spacer()
                .frame(width: 180)
            
            Text("")
                
            
        }
        .padding()
            .foregroundColor(.black)
            .frame(maxWidth: .infinity)
            .padding(.top,-25)
            .background(Color.white)
    }
}
