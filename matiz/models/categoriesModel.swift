import SwiftData
import SwiftUI
import Foundation

@Model
class CategoriesModel{
    var id = UUID()
    var name: String
    var sysicon: String
    var screenredir: String
    init(id: UUID = UUID(), name: String, sysicon: String, screenredir: String) {
        self.id = id
        self.name = name
        self.sysicon = sysicon
        self.screenredir = screenredir
    }
}
