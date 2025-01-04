import SwiftUI
import SwiftData 

struct carView: View {
    //todo: styles car view
    var car: carModel
    var body: some View {
        ZStack{
            Text(car.carImg)
            HStack{
                Text(car.name)
                Text(car.brand)
            }
        }
    }
}

