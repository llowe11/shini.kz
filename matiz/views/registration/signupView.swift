import SwiftUI

struct signupView: View {
    @AppStorage("isLoggedIn") private var isLoggedIn: Bool = false
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

#Preview {
    signupView()
}
