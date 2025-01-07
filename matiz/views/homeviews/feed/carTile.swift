import SwiftUI

struct carTile: View {
    @State var car: carModel
    var body: some View {
        NavigationLink(destination: carView(car:car)){
            Rectangle()
                .stroke(Color.gray, lineWidth: 1)
                .frame(height: 255)
                .overlay(
                    HStack{
                        VStack{
                            HStack{
                                Text(car.brand)
                                Text(car.name)
                            }
                        }.padding(10)
                            
                        Spacer()
                        Button {
                            addToFavourites()
                        } label: {
                            Image(systemName: car.isFavorite ? "heart.fill" : "heart")
                                .foregroundColor(car.isFavorite ? .red : .gray).font(.title2)
                                .opacity(0.8)
                        }

                    }
                        .padding()
                )
        }
    }
    
    func addToFavourites() {
            car.isFavorite.toggle()
        }
}


