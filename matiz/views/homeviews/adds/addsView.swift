import SwiftUI

struct addsView: View {
    var body: some View {
        ScrollView(.horizontal){
            HStack{
                ForEach(addsArray, id: \.id){add in
                    addTile(add: add)
                }
            }
        }.scrollIndicators(.hidden)
            .padding(.leading,10)
            
    }
}

#Preview {
    addsView()
}
