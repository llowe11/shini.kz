import SwiftUI
import SwiftData

struct carView: View {
    var car: carModel
    var monthlyPayment: Int?
    var initialPayment: Double?
    var formattedPayment: String
    var body: some View {
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
                
                carViewText(car: car)

                VStack{
                    VStack{
                        HStack{
                            Text("Ежемесячный платеж")
                            Spacer()
                            Text("\(monthlyPayment ?? 0) $")
                                .padding(5)
                                .cornerRadius(5)
                                .background(Color.yellow)
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
                        RoundedRectangle(cornerRadius: 10)
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
                Divider().padding(.top,7)
                VStack{
                    Text("TODO: описание машины")
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
