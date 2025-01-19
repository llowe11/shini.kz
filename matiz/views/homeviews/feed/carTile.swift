import SwiftUI

struct carTile: View {
    @State var car: carModel
    
    var body: some View {
        let monthlyPayment: Int? = Int(car.carprice).map { $0 / 60 }
        let initialPayment: Double? = Int(car.carprice).map{ Double($0) * 0.1}
        let formattedPayment = String(format: "%.0f", initialPayment ?? 0)

        let imageURL = URL(string: car.carImg)
        NavigationLink(destination: carView(car:car, monthlyPayment: monthlyPayment, initialPayment:initialPayment, formattedPayment: formattedPayment)){
                Rectangle()
                    .stroke(Color.gray, lineWidth: 0)
                    .frame(height: 290)
                    .overlay(
                        VStack{
                            cartileText(car:car)
                                .padding(.horizontal,10)
                                .padding(.top)
                            HStack{
                                Text("\(car.carprice) $")
                                Divider()
                                    .frame(width: 1,height: 17)
                                    .background(Color.black)
                                    .padding(.horizontal,3)
                                Text("в кредит")
                                Text("\(monthlyPayment ?? 0) $ / мес")
                                    .padding(.vertical, 3)
                                    .padding(.horizontal, 7)
                                    .background(Color.yellow.opacity(0.8))
                                    .cornerRadius(5)
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


