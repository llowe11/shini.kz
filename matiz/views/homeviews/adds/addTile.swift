import SwiftUI

struct addTile: View {
    var add: addModel
    var body: some View {
        RoundedRectangle(cornerRadius: 20)
            .stroke(Color.gray, lineWidth: 2)
            .frame(width: 100,height: 100)
            .overlay(
                VStack{
                    Text(add.image)
                }
            )

    }
}

