import SwiftUI

struct carTile: View {
    var car: carModel
        var body: some View {
            Rectangle()
                .stroke(Color.gray, lineWidth: 2)
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
                    .padding(10)
                    .foregroundColor(.black)
                )
                .clipped()
        }
}


