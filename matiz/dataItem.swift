import Foundation
import SwiftUI
import SwiftData

@Model
class DataItem{
    var id:String
    var name:String
    
    init(name: String) {
        self.id = UUID().uuidString
        self.name = name
    }
}
