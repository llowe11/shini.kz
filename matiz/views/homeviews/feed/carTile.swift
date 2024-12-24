import SwiftUI

struct carTile: View {
    var car: carModel
    var body: some View {
        Rectangle()
            .stroke(Color.gray, lineWidth: 1)
            .frame(height: 190)
            .overlay(
                VStack{
                    Text(car.brand)
                    Text(car.name)
                    Text(car.mileAge)
                }.padding(10)
            )
            
    }
}


