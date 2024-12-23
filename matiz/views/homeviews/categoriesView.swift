import SwiftUI

struct categoriesView: View {
    var body: some View {
        //todo use lazy grid to implement categories tiles
        RoundedRectangle(cornerRadius: 20)
            .stroke(Color.gray,lineWidth: 2)
            .padding(.horizontal,20)
            .frame(height: 250)
            .clipped()
    }
}

#Preview {
    categoriesView()
}
