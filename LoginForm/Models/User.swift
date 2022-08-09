//
//  User.swift
//  LoginForm
//
//  Created by Владимир Х. on 08.08.2022.
//

struct User {
    let login: String
    let password: String
    let person: Person
    
    static func getUser() -> User {
        User(
            login: "1",
            password: "q",
            person: Person.getPerson()
    )
    }
}

struct Person {
    let name: String
    let lastname: String
    let selfie: String
    
    var fullName: String {
        "\(name) \(lastname)"
    }
    
    static func getPerson() -> Person {
        Person(name: "Vladimir", lastname: "Lee", selfie: "selfie")
    }
}
