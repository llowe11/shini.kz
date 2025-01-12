import SwiftUI

struct ContentView: View {
    @Environment(\.modelContext) private var context
    var body: some View {
        NavigationView{
            TabView{
                homescreen()
                    .tabItem {
                        Label("шины.kz",systemImage: "house.fill")
                    }
                favouritesScreen()
                    .tabItem {
                        Label("избранное",systemImage: "heart")
                    }
                addcarscreen()
                    .tabItem {
                        Label("подать",systemImage: "plus.circle")
                    }
                messagesscreen()
                    .tabItem {
                        Label("сообщения",systemImage: "message")
                    }
                profilescreen()
                    .tabItem {
                        Label("кабинет",systemImage: "person.circle.fill")
                    }
            }.tint(Color.black)
        }
    }
}



#Preview {
    ContentView()
}
