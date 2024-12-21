import SwiftUI

struct signupView: View {
    @AppStorage("isLoggedIn") private var isLoggedIn: Bool = false
    @State private var name:String = ""
    @State private var surname:String = ""
    @State private var login:String = ""
    @State private var password:String = ""
    @State private var passwordCheck:String = ""
    var body: some View {
        
        //todo: make a view for the textfield and then map the data
        VStack{
            TextField("name",text: $name)
                .padding()
                .border(Color.black, width: 1)
                .autocapitalization(.none)
                .autocorrectionDisabled()
            TextField("surname",text: $surname)
                .padding()
                .border(Color.black, width: 1)
                .autocapitalization(.none)
                .autocorrectionDisabled()
            TextField("login",text: $login)
                .padding()
                .border(Color.black, width: 1)
                .autocapitalization(.none)
                .autocorrectionDisabled()
            TextField("password",text: $password)
                .padding()
                .border(Color.black, width: 1)
                .autocapitalization(.none)
                .autocorrectionDisabled()
            TextField("repeat password",text: $passwordCheck)
                .padding()
                .border(Color.black, width: 1)
                .autocapitalization(.none)
                .autocorrectionDisabled()
            VStack{
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
                Spacer()
                    .frame(height: 30)
                Button {
                    alreadySignedUp()
                } label: {
                    Text("already have an account?")
                        .foregroundStyle(Color.black)
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
