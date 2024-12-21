import SwiftUI

struct registrationView: View {
    @AppStorage("isLoggedIn") private var isLoggedIn: Bool = false
    var body: some View {
        Group{
            if isLoggedIn{
                signinView()
            }else{
                signupView()
            }
        }
    }

}

#Preview {
    registrationView()
}
