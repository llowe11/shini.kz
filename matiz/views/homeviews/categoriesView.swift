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
                        RoundedRectangle(cornerRadius: 10)
                            .stroke(Color.gray, lineWidth: 2)
                            .aspectRatio(0.9, contentMode: .fit)
                    }
                }
                .padding(5)
            )
            .padding(.horizontal, 20)
            .frame(height: 250)
    }
}
