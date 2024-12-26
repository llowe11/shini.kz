import Foundation
import SwiftData

@Model
class carModel: Identifiable{
    var id = UUID()
    var brand:String
    var name:String
    var date: String
    var mileAge: String
    var carImg : String
    var isFavorite : Bool
    init(id: UUID = UUID(), brand: String, name: String, date: String, mileAge: String, carImg:String, isFavorite:Bool) {
        self.id = id
        self.brand = brand
        self.name = name
        self.date = date
        self.mileAge = mileAge
        self.carImg = carImg
        self.isFavorite = isFavorite
    }
}
