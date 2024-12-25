import SwiftUI

struct homescreen: View {
    var body: some View {
            ZStack(alignment: .top) {
                ScrollView {
                    VStack(spacing: 5) {
                        addsView()
                        
                        categoriesView()
                        
                        carfeedView()
                        
                    }
                    .padding(.top, 115)
                }.scrollIndicators(.never)
                
                headerView()
            }
            .edgesIgnoringSafeArea(.top)
        }
}

#Preview {
    homescreen()
}
