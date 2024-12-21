import SwiftUI

struct signinView: View {
    @AppStorage("isRegistered") private var isRegistered: Bool = false
    @AppStorage("isLoggedIn") private var isLoggedIn: Bool = false
    @State private var login:String = ""
    @State private var password:String = ""
    var body: some View {
        VStack{
            TextField("login", text: $login)
                .padding()
                .border(Color.black, width: 1)
                .autocapitalization(.none)
                .autocorrectionDisabled()
            TextField("password", text: $password)
                .padding()
                .border(Color.black, width: 1)
                .autocapitalization(.none)
                .autocorrectionDisabled()
            VStack{
                Button {
                    register()
                } label: {
                    Text("sign in")
                        .padding()
                        .foregroundStyle(Color.black)
                        .border(Color.black, width: 1)
                }
                Spacer()
                    .frame(height: 30)
                Button {
                    goToSignUp()
                } label: {
                    Text("go back")
                        .foregroundStyle(Color.black)
                }


            }
        }.padding()
    }
    private func register(){
        if login == "test" && password == "test"{
            isRegistered = true
        }
    }
    private func goToSignUp() {
        isLoggedIn = false
    }
}

#Preview {
    signinView()
}
