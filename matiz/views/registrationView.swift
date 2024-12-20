import SwiftUI

struct registrationView: View {
    @AppStorage("isRegistered") private var isRegistered: Bool = false
    var body: some View {
        Text("Registration view")
    }
}

#Preview {
    registrationView()
}
