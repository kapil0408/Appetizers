//
//  ContentView.swift
//  Appetizers
//
//  Created by Kapil Kumar on 25/01/24.
//

import SwiftUI

struct AppetizersTabView: View {
    @EnvironmentObject var order: Order
    var body: some View {
        
        TabView{
            AppetizersView()
                .tabItem {
                    Label("Home", systemImage: "house")
                }
            
            AccountView()
                .tabItem {
                    Label("Account", systemImage: "person")

                }

            OrderView()
                .tabItem {
                    Label("Order", systemImage: "bag")
                }
                .badge(order.items.count)
        }
       // .accentColor(.brandPrimary)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        AppetizersTabView()
    }
}
