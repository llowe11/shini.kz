import SwiftUI
import SwiftData 

struct carView: View {
    var car: carModel
    var body: some View {
        Text(car.name)
        Text("car name")
        Text("car brand")
        Text("car price")
    }
}

