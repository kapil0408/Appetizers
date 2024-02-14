//
//  Alert.swift
//  Appetizers
//
//  Created by Kapil Kumar on 14/02/24.
//

import Foundation
import SwiftUI

struct AlertItem: Identifiable
{
    var id = UUID()
    let title: Text
    let message: Text
    let dismissButton: Alert.Button
}

struct AlertContext {
    
    static let invalidData = AlertItem(title: Text("Server Error"), message: Text("The data received from the server was invalid. Please contact support"), dismissButton: .default(Text("Ok")))
    
    static let invalidResponse = AlertItem(title: Text("Server Error"), message: Text("Invalid response from server. please try again later or con tact support"), dismissButton: .default(Text("Ok")))
    
    static let invalidURL = AlertItem(title: Text("Server Error"), message: Text("There was an issue connecting to the server. if this persists please contact support"), dismissButton: .default(Text("Ok")))

    static let unableToComplete = AlertItem(title: Text("Server Error"), message: Text("Unable to complete your request at this time. please check your internet connection."), dismissButton: .default(Text("Ok")))


}
