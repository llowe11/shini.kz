import SwiftUI

struct cartileBody: View {
    var imageURL: URL?
    var body: some View {
        HStack{
            AsyncImage(url: imageURL) { phase in
                switch phase {
                case .empty:
                    ProgressView()
                        .frame(width: 200, height: 150)
                case .success(let image):
                    image
                        .resizable()
                        .scaledToFit()
                        .frame(width: 200, height: 150)
                case .failure:
                    Image(systemName: "photo")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 200, height: 150) 
                        .foregroundColor(.gray)
                @unknown default:
                    EmptyView()
                }
            }
            .padding(.horizontal)
            
            Spacer()
            
            Text("cool car description")
                .padding(.horizontal)
                .foregroundStyle(Color.black)
        }
    }
}
