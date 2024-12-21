import SwiftUI

struct signupView: View {
    @AppStorage("isLoggedIn") private var isLoggedIn: Bool = false
    @State private var login:String = ""
    @State private var password:String = ""
    var body: some View {
        VStack{
            TextField("login",text: $login)
                .padding()
                .border(Color.black, width: 1)
                .autocapitalization(.none)
            TextField("password",text: $password)
                .padding()
                .border(Color.black, width: 1)
                .autocapitalization(.none)
            TextField("repeat password",text: $password)
                .padding()
                .border(Color.black, width: 1)
                .autocapitalization(.none)
            HStack{
                Button {
                    func test(){
                        return
                    }
                } label: {
                    Text("signup")
                        .padding()
                        .foregroundStyle(Color.black)
                        .border(Color.black, width: 1)
                }
                Button {
                    alreadySignedUp()
                } label: {
                    Text("signin")
                        .padding()
                        .foregroundStyle(Color.black)
                        .border(Color.black, width: 1)
                }

            }
        }.padding()
    }
    
    private func alreadySignedUp(){
        isLoggedIn = true
    }
}

#Preview {
    signupView()
}
