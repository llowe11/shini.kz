import SwiftUI

struct carTile: View {
    @State var car: carModel
    var body: some View {
        Rectangle()
            .stroke(Color.gray, lineWidth: 1)
            .frame(height: 190)
            .overlay(
                HStack{
                    VStack{
                        HStack{
                            Text(car.brand)
                            Text(car.name)
                        }
                        Text(car.mileAge)
                    }.padding(10)
                        
                    Spacer().frame(width: 180)
                    Button {
                        addToFavourites()
                    } label: {
                        Image(systemName: car.isFavorite ? "heart.fill" : "heart")
                            .foregroundColor(car.isFavorite ? .black : .gray).font(.title2)
                    }

                }
            )
    }
    
    func addToFavourites () {
        car.isFavorite.toggle()
        if car.isFavorite {
                    if !favCarsArr.contains(where: { $0.id == car.id }) {
                        favCarsArr.append(car)
                    }
                } else {
                    print("\(car.brand) \(car.name) is no longer a favorite.")
                }

    }
}


