import SwiftUI

struct addsView: View {
    @State private var showTempScreen = false

    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(spacing: 10) {
                ForEach(addsArray, id: \.id) { add in
                    addTile(add: add)
                        .onTapGesture {
                            showTempScreen = true
                        }
                }
            }.padding(.leading, 10)
        }
        .fullScreenCover(isPresented: $showTempScreen) {
            tempScreen()
        }
    }
}
