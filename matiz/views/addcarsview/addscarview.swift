import SwiftUI

struct addscarview: View {
    @State private var text: String = "test"
    var body: some View {
        VStack{
            TextField("test",text: $text)
            TextField("test",text: $text)
            TextField("test",text: $text)
            TextField("test",text: $text)
            TextField("test",text: $text)
        }
    }
}

