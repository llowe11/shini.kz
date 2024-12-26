import SwiftUI

struct favouritesTile: View {
    var favcar:carModel
    var body: some View {
        Rectangle()
            .stroke(Color.gray, lineWidth: 1)
            .frame(height: 190)
            .overlay(
                HStack{
                    VStack{
                        HStack{
                            Text(favcar.brand)
                            Text(favcar.name)
                        }
                        Text(favcar.mileAge)
                    }.padding(10)
                        
                    Spacer()
                    Button {
                        addToFavourites()
                    } label: {
                        Image(systemName: favcar.isFavorite ? "heart.fill" : "heart")
                            .foregroundColor(favcar.isFavorite ? .black : .gray).font(.title2)
                    }

                }
            )
    }
    func addToFavourites () {
        favcar.isFavorite.toggle()
        if favcar.isFavorite {
                    if !favCarsArr.contains(where: { $0.id == favcar.id }) {
                        favCarsArr.append(favcar)
                    }
                } else {
                    print("\(favcar.brand) \(favcar.name) is no longer a favorite.")
                }

    }
}


