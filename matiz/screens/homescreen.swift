import SwiftUI

struct homescreen: View {
    var body: some View {
            ZStack(alignment: .top) {
                ScrollView {
                    VStack(spacing: 0) {
                        addsView()
                        
                        categoriesView()
                        
                        carfeedView()
                        
                    }
                    .padding(.top, 55)
                }.scrollIndicators(.never)
                
                headerView()
            }
            .edgesIgnoringSafeArea(.top)
        }
}

#Preview {
    homescreen()
}
