//
//  User.swift
//  Appetizers
//
//  Created by Kapil Kumar on 22/02/24.
//

import Foundation
import SwiftUI

struct User: Codable {
    
    var firstName = ""
    var lastName = ""
    var email = ""
    var birthDate = Date()
    var extranapkins: Bool = false
    var frequentRefills: Bool = false
}
