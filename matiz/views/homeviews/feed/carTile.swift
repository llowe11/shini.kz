import SwiftUI

struct carTile: View {
    var body: some View {
        Rectangle()
            .stroke(Color.gray, lineWidth: 2)
            .frame(height: 190)
            .clipped()
    }
}

#Preview {
    carTile()
}
