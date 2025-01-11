import SwiftUI

struct carTile: View {
    @State var car: carModel
    var body: some View {
            NavigationLink(destination: carView(car:car)){
                Rectangle()
                    .stroke(Color.gray, lineWidth: 1)
                    .frame(height: 255)
                    .overlay(
                        cartileText(car:car)
                            .padding()
                    )
            }
    }
}


