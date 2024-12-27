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
                        
                    Spacer()
                    Button {
                        addToFavourites()
                    } label: {
                        Image(systemName: car.isFavorite ? "heart.fill" : "heart")
                            .foregroundColor(car.isFavorite ? .black : .gray).font(.title2)
                    }

                }
                    .padding()
            )
    }
    
    func addToFavourites() {
            car.isFavorite.toggle()
        }
}


