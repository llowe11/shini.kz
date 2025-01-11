import SwiftUI

struct categoriesView: View {
    let columns = [
        GridItem(.flexible(), spacing: 10),
        GridItem(.flexible(), spacing: 10),
        GridItem(.flexible(), spacing: 10),
        GridItem(.flexible(), spacing: 10)
    ]
    
    var body: some View {
        RoundedRectangle(cornerRadius: 20)
            .fill(.white)
            .overlay(
                LazyVGrid(columns: columns, spacing: 10) {
                    ForEach(0..<8) { _ in
                        ZStack(alignment: .topLeading) {
                            RoundedRectangle(cornerRadius: 10)
                                .fill(Color.blue.opacity(0.12))
                                .aspectRatio(0.9, contentMode: .fit)
                            
                            VStack {
                                Image(systemName: "car.fill")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 30, height: 30)
                                    .foregroundColor(.blue)
                                    .padding(10)
                                    .opacity(0.6)
                                
                                Text("машины")
                                    .font(.caption)
                                    .foregroundColor(.blue)
                                    .padding(.top, -7)
                            }
                            .padding(5)
                        }
                    }
                }
                .padding(5)
            )
            .padding(.horizontal, 20)
            .frame(height: 250)
    }
}
