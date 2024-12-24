import Foundation
import SwiftData

@Model
class addModel{
    var id = UUID()
    var name: String
    var image: String
    init(id: UUID = UUID(), name: String, image: String) {
        self.id = id
        self.name = name
        self.image = image
    }
}
