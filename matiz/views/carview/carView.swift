import SwiftUI
import SwiftData 

struct carView: View {
    var car: carModel
    var body: some View {
        let imageURL = URL(string: car.carImg)
        ZStack{
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
                            .frame(width: 200, height: 200)
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
                    Text(car.name)
                    Text(car.brand)
                }
                Text(car.carprice)
                Button {
                    calculateLoan()
                } label: {
                    Text("Расчитать кредит")
                }
            }
        }
        
    }
    func calculateLoan(){
        return
    }

}

