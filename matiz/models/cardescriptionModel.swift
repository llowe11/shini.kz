import SwiftData
import Foundation


@Model
class carDescription{
    var id = UUID()
    var isUsed:Bool
    init(id: UUID = UUID(), isUsed: Bool) {
        self.id = id
        self.isUsed = isUsed
    }
}
