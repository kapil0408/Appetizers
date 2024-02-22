//
//  User.swift
//  Appetizers
//
//  Created by Kapil Kumar on 22/02/24.
//

import Foundation

struct User: Codable {
    
    var firstName = ""
    var lastName = ""
    var email = ""
    var birthDate = Date()
    var extranapkins: Bool = false
    var frequentRefills: Bool = false
    var alertItem: AlertItem?
}
