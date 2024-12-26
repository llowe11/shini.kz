import SwiftUI

//todo: fix bug with not all the elements are being pushed into the fav array
struct favouritesView: View {
    var body: some View {
        ScrollView{
            VStack{
                ForEach(favCarsArr, id: \.id){favcar in
                    favouritesTile(favcar:favcar)
                }
            }
        }
    }
}

#Preview {
    favouritesView()
}
