import SwiftUI

struct favouritesView: View {
    var favoriteCars: [carModel] {
        carsArray.filter { $0.isFavorite }
    }

    var body: some View {
        ScrollView {
            VStack(spacing: 16) {
                ForEach(favoriteCars, id: \.name) { car in
                    favouritesTile(car: car)
                }
            }
        }
    }
}
