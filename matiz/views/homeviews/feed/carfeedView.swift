import SwiftUI

struct carfeedView: View {
    var body: some View {
            VStack {
                ForEach(carsArray, id: \.name) { car in
                    carTile(car: car)
                        .padding(.bottom, 10)
                }
            }
            .padding()
        }
}

#Preview {
    carfeedView()
}
