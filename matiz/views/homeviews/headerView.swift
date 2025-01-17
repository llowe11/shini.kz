import SwiftUI

struct headerView: View {
    var body: some View {
        HStack{
            Text("шины.kz")
                .font(.largeTitle)
                .fontWeight(.bold)
            Spacer()
                .frame(width: 165)
            
            NavigationLink(destination: {
                newsScreen()
            }){
                Text("новости")
                    .foregroundStyle(Color.blue.opacity(0.8))
                    
            }
            
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
