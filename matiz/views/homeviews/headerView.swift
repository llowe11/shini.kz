import SwiftUI

struct headerView: View {
    var body: some View {
        HStack{
            Text("шины.kz")
                .font(.largeTitle)
                .fontWeight(.bold)
            Spacer()
                .frame(width: 230)
            
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
