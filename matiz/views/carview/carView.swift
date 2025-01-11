import SwiftUI
import SwiftData

struct carView: View {
    var car: carModel
    var body: some View {
        let imageURL = URL(string: car.carImg)
        
        ScrollView {
            VStack(alignment: .leading, spacing: 16) {
                AsyncImage(url: imageURL) { phase in
                    switch phase {
                    case .empty:
                        ProgressView()
                            .frame(width: .infinity, height: 250)
                    case .success(let image):
                        image
                            .resizable()
                            .scaledToFit()
                            .frame(width: .infinity, height: 250)
                            .cornerRadius(12)
                    case .failure:
                        Image(systemName: "photo")
                            .resizable()
                            .scaledToFit()
                            .frame(width: .infinity, height: 250)
                            .foregroundColor(.gray)
                    @unknown default:
                        EmptyView()
                    }
                }
                .padding(.bottom, 20)
                
                HStack {
                    Text(car.brand)
                        .font(.title2)
                    Text(car.name)
                        .font(.title2)
                }
                Text("\(car.carprice) $")
                    .font(.title3)
                Divider()

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
                .padding(.top,30)
                
                
                
            }
        }
        .padding()
        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .top)
    }
    
    func calculateLoan() {
        return
    }
}

