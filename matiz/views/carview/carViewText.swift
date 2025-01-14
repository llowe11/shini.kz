import SwiftUI

struct carViewText: View {
    var car: carModel
    var body: some View {
        HStack {
            Text(car.brand)
                .font(.title2)
            Text(car.name)
                .font(.title2)
        }
        Text("\(car.carprice) $")
            .font(.title3)
        Divider()
    }
}
