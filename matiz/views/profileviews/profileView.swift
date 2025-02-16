import SwiftUI

struct profileView: View {
    var body: some View {
        ZStack(alignment: .top) {
            ScrollView {
                VStack(spacing: 15) {
                    HStack {
                        Image(systemName: "person.crop.circle.fill")
                            .resizable()
                            .frame(width: 140, height: 140)
                            .foregroundColor(.gray)
                    }
                    
                    HStack(spacing: 10) {
                        Text("Джон")
                            .font(.title2)
                            .fontWeight(.bold)
                        Text("Сноу")
                            .font(.title2)
                            .fontWeight(.bold)
                    }
                    
                    Divider()
                    
                    VStack(spacing: 5) {
                        HStack {
                            Text("Рейтинг: ")
                                .font(.headline)
                            Image(systemName: "star.fill")
                                .foregroundColor(.yellow)
                            Text("4.8")
                        }
                        
                        HStack {
                            Text("Категории: ")
                                .font(.headline)
                            Text("Седаны, Кроссоверы, Электромобили")
                                .foregroundColor(.gray)
                        }
                    }
                    
                    Divider()
                    
                
                    VStack(alignment: .leading, spacing: 10) {
                        Text("Объявления")
                            .font(.title2)
                            .fontWeight(.bold)
                        
                        VStack(spacing: 10) {
                            ForEach(carsArray.prefix(3), id: \ .name) { car in
                                HStack {
                                    AsyncImage(url: URL(string: car.carImg)) { image in
                                        image.resizable()
                                    } placeholder: {
                                        Image(systemName: "car.fill")
                                            .resizable()
                                            .foregroundColor(.gray)
                                    }
                                    .frame(width: 80, height: 50)
                                    VStack(alignment: .leading) {
                                        Text(car.name.isEmpty ? car.brand : "\(car.brand) \(car.name)")
                                            .font(.headline)
                                        Text("\(car.carprice) $")
                                            .foregroundColor(.black)
                                    }
                                    Spacer()
                                    Image(systemName: "chevron.right")
                                        .foregroundColor(.gray)
                                }
                                .padding()
                                .background(Color(.systemgray6))
                                .cornerRadius(10)
                            }
                        }
                    }
                    
                    Divider()
                    
                    VStack(alignment: .leading, spacing: 10) {
                        Text("Отзывы покупателей")
                            .font(.title2)
                            .fontWeight(.bold)
                        
                        VStack(spacing: 10) {
                            ForEach(0..<1) { _ in
                                VStack(alignment: .leading) {
                                    HStack {
                                        Image(systemName: "person.circle.fill")
                                            .resizable()
                                            .frame(width: 40, height: 40)
                                            .foregroundColor(.gray)
                                        Text("Доминик Торетто")
                                            .font(.headline)
                                    }
                                    Text("Отличный продавец! Всё честно, машина в хорошем состоянии.")
                                        .foregroundColor(.gray)
                                }
                                .padding()
                                .background(Color(.systemGray6))
                                .cornerRadius(10)
                            }
                        }
                    }
                }
                .padding(.horizontal)
            }
            .padding(.top, 80)
            
            profileheaderView()
        }
    }
}
