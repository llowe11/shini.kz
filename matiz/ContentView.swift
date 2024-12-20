import SwiftUI

struct ContentView: View {
    @Environment(\.modelContext) private var context
    var body: some View {
        TabView{
            homescreen()
                .tabItem {
                    Label("homepage",systemImage: "house.fill")
                }
        }
    }
}



#Preview {
    ContentView()
}
