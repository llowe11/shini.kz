import SwiftUI

struct carTile: View {
    @State var car: carModel
    var body: some View {
        let imageURL = URL(string: car.carImg)
            NavigationLink(destination: carView(car:car)){
                Rectangle()
                    .stroke(Color.gray, lineWidth: 0)
                    .frame(height: 290)
                    .overlay(
                        VStack{
                            cartileText(car:car)
                                .padding(.horizontal,10)
                                .padding(.top)
                            HStack{
                                Text("\(car.carprice)")
                                Spacer()
                            }.padding(.leading, 21)
                            
                            
                            
                            cartileBody(imageURL: imageURL)
                            
                            Divider()
                                .padding(.top,1)
                                .padding(.horizontal)
                            Text(car.date)
                                .opacity(0.8)
                                .font(.caption)
                                .frame(maxWidth: .infinity, alignment: .trailing)
                                .padding(.horizontal)
                        }
                    )
            }
    }
}


