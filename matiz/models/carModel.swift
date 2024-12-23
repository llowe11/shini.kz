import Foundation
import SwiftData

@Model
class carModel{
    var id = UUID()
    var brand:String
    var name:String
    var date: Date
    var mileAge: String
    init(id: UUID = UUID(), brand: String, name: String, date: Date, mileAge: String) {
        self.id = id
        self.brand = brand
        self.name = name
        self.date = date
        self.mileAge = mileAge
    }
}
