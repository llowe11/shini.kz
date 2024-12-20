import SwiftUI

struct registrationView: View {
    @AppStorage("isRegistered") private var isRegistered: Bool = false
    @State private var login:String = ""
    @State private var password:String = ""
    var body: some View {
        VStack{
            TextField("login", text: $login)
                .border(Color.black, width: 1)
                .autocapitalization(.none)
            TextField("password", text: $password)
                .border(Color.black, width: 1)
                .autocapitalization(.none)
            HStack{
                Button {
                    register()
                } label: {
                    Text("submit")
                        .foregroundStyle(Color.black)
                        .border(Color.black, width: 1)
                }

            }
        }.padding()
    }
    private func register(){
        if login == "test" && password == "test"{
            isRegistered = true
        }
    }
}

#Preview {
    registrationView()
}
