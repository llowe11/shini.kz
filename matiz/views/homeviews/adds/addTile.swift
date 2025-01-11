import SwiftUI

struct addTile: View {
    var add: addModel
    var body: some View {
        RoundedRectangle(cornerRadius: 20)
            .stroke(Color.blue.opacity(0.4), lineWidth: 2)
            .frame(width: 90,height: 90)
            .overlay(
                VStack{
                    Text(add.image)
                }
            )

    }
}

