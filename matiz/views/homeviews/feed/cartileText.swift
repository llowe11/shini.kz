import SwiftUI


struct cartileText: View {
    @State var car: carModel
    var body: some View {
        HStack{
            VStack{
                HStack(spacing: 5){
                    Text(car.brand)
                    Text(car.name)
                }
                .foregroundStyle(Color.blue.opacity(0.6))
                .bold()
                .font(.title3)
            }.padding(10)
                
            Spacer()
            Button {
                addToFavourites()
            } label: {
                Image(systemName: car.isFavorite ? "heart.fill" : "heart")
                    .foregroundColor(car.isFavorite ? .red.opacity(0.9) : .blue).font(.title2)
                    .opacity(0.8)
            }

        }
    }
    
    func addToFavourites() {
            car.isFavorite.toggle()
        }
}

