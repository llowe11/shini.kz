import SwiftUI

struct favouritesView: View {
    var favoriteCars: [carModel] {
        carsArray.filter { $0.isFavorite }
    }

    var body: some View {
        ZStack(alignment: .top) {
            ScrollView {
                VStack(spacing: 10) {
                    Spacer().frame(height: 40)
                    ForEach(favoriteCars, id: \.name) { car in
                        carTile(car: car)
                            .background(Color.white)
                    }
                }
                
                .background(Color.gray.opacity(0.15))
            }
            favouritesheaderView()
        }
        .edgesIgnoringSafeArea(.top)
    }
}
