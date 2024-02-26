//
//  AppetizersApp.swift
//  Appetizers
//
//  Created by Kapil Kumar on 25/01/24.
//

import SwiftUI

@main
struct AppetizersApp: App {
    
    var order = Order()
    
    var body: some Scene {
        WindowGroup {
            AppetizersTabView().environmentObject(order)
        }
    }
}
