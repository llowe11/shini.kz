import SwiftUI

struct carfeedView: View {
    var body: some View {
        VStack {
            ForEach(carsArray, id: \.id){car in
                carTile(car: car)
                    .padding(.bottom, 3)
            }
        }
    }
}

