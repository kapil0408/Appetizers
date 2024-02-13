//
//  Appetizers.swift
//  Appetizers
//
//  Created by Kapil Kumar on 13/02/24.
//

import Foundation

struct Appetizer {
    let id : Int
    let name: String
    let description: String
    let price: Double
    let imageURL: String
    let calories: Int
    let protein: Int
    let carbs: Int
}

struct AppetizerResponse {
    let request: [Appetizer]
}

struct MockData {
    static let sampleAppetizer = Appetizer(id: 0001,
                                           name: "Test Appetizers",
                                           description: "This is the description for my appetizers, it's yummy",
                                           price: 9.99,
                                           imageURL: "",
                                           calories: 99,
                                           protein: 99,
                                           carbs: 99)
    
    static let appetizers = [sampleAppetizer, sampleAppetizer, sampleAppetizer,sampleAppetizer]
}
