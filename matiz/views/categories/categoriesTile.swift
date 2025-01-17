import SwiftUI

struct categoriesTile: View {
    let category: CategoriesModel
    var body: some View {
        NavigationLink(destination: viewForScreenName(category.screenredir)){
            ZStack(alignment: .topLeading) {
                RoundedRectangle(cornerRadius: 10)
                    .fill(Color.blue.opacity(0.12))
                    .aspectRatio(0.9, contentMode: .fit)
                
                VStack {
                    Image(systemName: category.sysicon)
                        .resizable()
                        .scaledToFit()
                        .frame(width: 30, height: 30)
                        .foregroundColor(.blue)
                        .padding(10)
                        .opacity(0.6)
                    
                    Text(category.name)
                        .font(.caption)
                        .foregroundColor(.black.opacity(0.75))
                        .padding(.top, -7)
                }
                .padding(5)
            }
        }
    }
}
