import SwiftUI

struct categoriesView: View {
    let columns = [
        GridItem(.flexible(), spacing: 8),
        GridItem(.flexible(), spacing: 8),
        GridItem(.flexible(), spacing: 8),
        GridItem(.flexible(), spacing: 8)
    ]
    
    var body: some View {
            RoundedRectangle(cornerRadius: 20)
                .fill(.white)
                .overlay(
                    LazyVGrid(columns: columns, spacing: 10) {
                        ForEach(categoriesArray) { category in
                            categoriesTile(category: category)
                        }
                    }
                    .padding(5)
                )
                .padding(.horizontal, 20)
                .frame(height: 250)
    }
}


