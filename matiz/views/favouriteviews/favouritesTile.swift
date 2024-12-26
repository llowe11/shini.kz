import SwiftUI

struct favouritesTile: View {
    var favcar:carModel
    var body: some View {
        Rectangle()
            .stroke(Color.gray, lineWidth: 1)
            .frame(height: 190)
            .overlay(
                HStack{
                    VStack{
                        HStack{
                            Text(favcar.brand)
                            Text(favcar.name)
                        }
                        Text(favcar.mileAge)
                    }.padding(10)
                        
                    Spacer()

                }
            )
    }
}


