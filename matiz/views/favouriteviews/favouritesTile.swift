import SwiftUI

struct favouritesTile: View {

    var body: some View {
        Rectangle()
            .stroke(Color.gray, lineWidth: 1)
            .frame(height: 190)
            .overlay(
                Text("text")
            )
    }
}


