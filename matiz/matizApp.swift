import SwiftUI
import SwiftData


@main
struct matizApp: App {
    @AppStorage("isRegistered") private var isRegistered: Bool = false
    var body: some Scene {
        WindowGroup {
            if isRegistered{
                ContentView()
            }else{
                registrationView()
            }
        }
        .modelContainer(for: [UserLogin.self,carModel.self])
    }
}
