import SwiftUI

struct carTile: View {
    @State var car: carModel
    var body: some View {
        let imageURL = URL(string: car.carImg)
        NavigationLink(destination: carView(car:car)){
            Rectangle()
                .stroke(Color.gray, lineWidth: 1)
                .frame(height: 190)
                .overlay(
                    HStack{
                        VStack{
                            AsyncImage(url: imageURL) { phase in
                                switch phase {
                                case .empty:
                                    ProgressView()
                                        .frame(width: 200, height: 200)
                                case .success(let image):
                                    image
                                        .resizable()
                                        .scaledToFit()
                                        .frame(width: 100, height: 100)
                                        .cornerRadius(12)
                                case .failure:
                                    Image(systemName: "photo")
                                        .resizable()
                                        .scaledToFit()
                                        .frame(width: 200, height: 200)
                                        .foregroundColor(.gray)
                                @unknown default:
                                    EmptyView()
                                }
                            }
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
    }
    
    func addToFavourites() {
            car.isFavorite.toggle()
        }
}


