import SwiftUI

struct favouritesView: View {
    var favoriteCars: [carModel] {
        carsArray.filter { $0.isFavorite }
    }

    var body: some View {
        ZStack(alignment: .top){
            ScrollView {
                VStack(spacing: 10) {
                    Spacer().frame(height:100)
                    ForEach(favoriteCars, id: \.name) { car in
                        carTile(car: car)
                    }
                }
            }
            favouritesheaderView()
        }.edgesIgnoringSafeArea(.top)
    }
}
