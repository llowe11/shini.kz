import SwiftData
import Foundation


@Model
class UserLogin {
    @Attribute(.unique) var login: String
    var password: String
    var name: String
    var surname: String
    var birthDate: String
    var gender:String
    
    init(login: String, password: String, name: String, surname: String, birthDate: String, gender: String) {
        self.login = login
        self.password = password
        self.name = name
        self.surname = surname
        self.birthDate = birthDate
        self.gender = gender
    }
}
