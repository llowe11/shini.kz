import SwiftUI

struct favouritesView: View {
    var body: some View {
        ForEach(favCarsArr, id: \.id){favcar in
            favouritesTile(favcar:favcar)
        }
    }
}

#Preview {
    favouritesView()
}
