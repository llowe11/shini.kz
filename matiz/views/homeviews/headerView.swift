import SwiftUI

struct headerView: View {
    var body: some View {
        HStack{
            Text("Matiz")
                .font(.largeTitle)
                .fontWeight(.bold)
            Spacer()
                .frame(width: 275)
            
            Text("")
                
            
        }
        .padding()
            .foregroundColor(.black)
            .frame(maxWidth: .infinity)
            .padding(.top, 35)
            .background(Color.white)
    }
}

#Preview {
    headerView()
}
