import SwiftData
import Foundation

@Model
class CategoriesModel{
    var id = UUID()
    var name: String
    var sysicon: String
    init(id: UUID = UUID(), name: String, sysicon: String) {
        self.id = id
        self.name = name
        self.sysicon = sysicon
    }
}
