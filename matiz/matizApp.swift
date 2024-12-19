import SwiftUI
import SwiftData
@main
struct matizApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
        .modelContainer(for:DataItem.self)
    }
}
