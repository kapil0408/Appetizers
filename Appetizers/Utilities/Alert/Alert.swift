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
    
    //MARK: - Network Alerts
    static let invalidData = AlertItem(title: Text("Server Error"), message: Text("The data received from the server was invalid. Please contact support"), dismissButton: .default(Text("Ok")))
    
    static let invalidResponse = AlertItem(title: Text("Server Error"), message: Text("Invalid response from server. please try again later or con tact support"), dismissButton: .default(Text("Ok")))
    
    static let invalidURL = AlertItem(title: Text("Server Error"), message: Text("There was an issue connecting to the server. if this persists please contact support"), dismissButton: .default(Text("Ok")))

    static let unableToComplete = AlertItem(title: Text("Server Error"), message: Text("Unable to complete your request at this time. please check your internet connection."), dismissButton: .default(Text("Ok")))
    
    
    //MARK: - Account Alerts

    static let invalidForm = AlertItem(title: Text("Invalid Form"), message: Text("Please ensure all fields in the form have been filled out."), dismissButton: .default(Text("Ok")))

    static let invalidEmail = AlertItem(title: Text("Invalid Email"), message: Text("Please ensure your email is correct."), dismissButton: .default(Text("Ok")))

    static let userSaveSuccess = AlertItem(title: Text("Profile Saved"), message: Text("Your profile information was successfully saved."), dismissButton: .default(Text("Ok")))
    
    static let invalidUserData = AlertItem(title: Text("Profile Error"), message: Text("There was an error saving or retrieving your profile."), dismissButton: .default(Text("Ok")))

}
