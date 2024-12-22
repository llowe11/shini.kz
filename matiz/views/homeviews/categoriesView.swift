import SwiftUI

struct categoriesView: View {
    var body: some View {
        Rectangle()
            .padding(.horizontal,23)
            .cornerRadius(20)
            .frame(height: 250)
            .clipped()
    }
}

#Preview {
    categoriesView()
}
