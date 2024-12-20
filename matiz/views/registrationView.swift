import SwiftUI

struct registrationView: View {
    @AppStorage("isRegistered") private var isRegistered: Bool = false
    @State var login:String = ""
    @State var password:String = ""
    var body: some View {
        VStack{
            TextField("login", text: $login)
                .border(Color.black, width: 1)
            TextField("password", text: $password)
                .border(Color.black, width: 1)
            HStack{
                Button {
                    func register(){
                        return
                    }
                } label: {
                    Text("submit")
                        .foregroundStyle(Color.black)
                        .border(Color.black, width: 1)
                }

            }
        }.padding()
    }
}

#Preview {
    registrationView()
}
