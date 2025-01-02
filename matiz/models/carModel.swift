import Foundation
import SwiftData

@Model
class carModel {
    var id = UUID()
    var brand: String
    var name: String
    var date: String
    var mileAge: String
    var carImg: String
    var isFavorite: Bool
    var carprice: String
    init(id: UUID = UUID(), brand: String, name: String, date: String, mileAge: String, carImg: String, isFavorite: Bool, carprice: String) {
        self.id = id
        self.brand = brand
        self.name = name
        self.date = date
        self.mileAge = mileAge
        self.carImg = carImg
        self.isFavorite = isFavorite
        self.carprice = carprice
    }
}
