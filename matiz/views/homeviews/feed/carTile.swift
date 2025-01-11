import SwiftUI

struct carTile: View {
    @State var car: carModel
    var body: some View {
        let imageURL = URL(string: car.carImg)
            NavigationLink(destination: carView(car:car)){
                Rectangle()
                    .stroke(Color.gray, lineWidth: 1)
                    .frame(height: 255)
                    .overlay(
                        VStack{
                            cartileText(car:car)
                                .padding(.horizontal,10)
                            HStack{
                                Text("\(car.carprice) $")
                                    
                                Spacer()
                            }.padding(.leading, 21)
                            
                            HStack{
                                AsyncImage(url: imageURL) { phase in
                                    switch phase {
                                    case .empty:
                                        ProgressView()
                                            .frame(width: .infinity, height: 150)
                                    case .success(let image):
                                        image
                                            .resizable()
                                            .scaledToFit()
                                            .frame(width: 200 , height: .infinity)
                                            .cornerRadius(15)
                                    case .failure:
                                        Image(systemName: "photo")
                                            .resizable()
                                            .scaledToFit()
                                            .frame(width: .infinity, height: 250)
                                            .foregroundColor(.gray)
                                    @unknown default:
                                        EmptyView()
                                    }
                                }.padding(.horizontal)
                                Spacer()
                                Text("cool car description")
                                    .padding(.horizontal)
                            }
                        }
                    )
            }
    }
}


