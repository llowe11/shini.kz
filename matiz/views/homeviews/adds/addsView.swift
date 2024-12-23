import SwiftUI

struct addsView: View {
    var body: some View {
        ScrollView(.horizontal){
            HStack{
                addTile()
                addTile()
                addTile()
                addTile()
                addTile()
                addTile()
                addTile()
            }
        }.scrollIndicators(.hidden)
            .padding(.leading)
            
    }
}

#Preview {
    addsView()
}
