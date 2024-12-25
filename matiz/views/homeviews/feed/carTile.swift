import SwiftUI

struct carTile: View {
    var car: carModel
    var body: some View {
        Rectangle()
            .stroke(Color.gray, lineWidth: 1)
            .frame(height: 190)
            .overlay(
                HStack{
                    VStack{
                        Text(car.brand)
                        Text(car.name)
                        Text(car.mileAge)
                    }.padding(10)
                    Spacer().frame(width: 200)
                    Button {
                        addToFavourites()
                    } label: {
                        if !car.isFavorite{
                            Image(systemName: "heart")
                        }else{
                            Image(systemName: "heart.fill")
                        }
                    }

                }
            )
    }
    
    func addToFavourites () {
        car.isFavorite = true
    }
}


