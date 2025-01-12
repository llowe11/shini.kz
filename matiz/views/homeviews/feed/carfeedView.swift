import SwiftUI

struct carfeedView: View {
    var body: some View {
        VStack(spacing: 8) {
            ForEach(carsArray, id: \.id) { car in
                carTile(car: car)
                    .background(Color.white)
            }
        }
        .padding(.vertical,8)
        .background(Color.gray.opacity(0.15))
    }
}
