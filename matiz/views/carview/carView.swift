import SwiftUI
import SwiftData

struct carView: View {
    var car: carModel
    var body: some View {
        let monthlyPayment: Int? = Int(car.carprice).map { $0 / 12 }
        let initialPayment: Double? = Int(car.carprice).map{ Double($0) * 0.1}
        let formattedPayment = String(format: "%.0f", initialPayment ?? 0)
        let imageURL = URL(string: car.carImg)
        
        ScrollView {
            VStack(alignment: .leading, spacing: 16) {
                AsyncImage(url: imageURL) { phase in
                    switch phase {
                    case .empty:
                        ProgressView()
                            .frame(height: 250)
                            .frame(maxWidth: .infinity)
                    case .success(let image):
                        image
                            .resizable()
                            .scaledToFill()
                            .frame(height: 250)
                            .frame(maxWidth: .infinity)
                            .clipped()
                    case .failure:
                        Image(systemName: "photo")
                            .resizable()
                            .scaledToFill()
                            .frame(height: 250)
                            .frame(maxWidth: .infinity)
                            .foregroundColor(.gray)
                            .clipped()
                    @unknown default:
                        EmptyView()
                    }
                }
                .ignoresSafeArea(edges: .horizontal)
                
                HStack {
                    Text(car.brand)
                        .font(.title2)
                    Text(car.name)
                        .font(.title2)
                }
                Text("\(car.carprice) $")
                    .font(.title3)
                Divider()

                VStack{
                    VStack{
                        HStack{
                            Text("Ежемесячный платеж")
                            Spacer()
                            Text("\(monthlyPayment ?? 0) $")
                                .background(Color.yellow)
                                .padding(1)
                        }
                        HStack{
                            Text("Первоначальный взнос 10%")
                            Spacer()
                            Text("\(formattedPayment) $")
                        }
                    }
                    Button {
                        calculateLoan()
                    } label: {
                        RoundedRectangle(cornerRadius: 15)
                            .overlay {
                                Text("Расчитать кредит")
                                    .foregroundStyle(Color.white)
                                    .font(.title3)
                            }
                    }
                    .frame(height: 50)
                    .foregroundStyle(Color.red)
                    .padding(.top,10)
                }
            }
        }
        .padding(.horizontal)
        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .top)
    }
    
    func calculateLoan() {
        return
    }
}
