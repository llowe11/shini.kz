import SwiftUI
struct favouritesTile: View {
    var car: carModel

    var body: some View {
        NavigationLink(destination: carView()){
            Rectangle()
                .stroke(Color.gray, lineWidth: 1)
                .frame(height: 190)
                .overlay(
                    VStack {
                        Text(car.brand)
                            .font(.headline)
                        Text(car.name)
                            .font(.subheadline)
                        Text(car.mileAge)
                            .font(.footnote)
                    }
                )
        }
    }
}
