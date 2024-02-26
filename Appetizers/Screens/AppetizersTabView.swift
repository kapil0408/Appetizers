//
//  ContentView.swift
//  Appetizers
//
//  Created by Kapil Kumar on 25/01/24.
//

import SwiftUI

struct AppetizersTabView: View {
    var body: some View {
        
        TabView{
            AppetizersView()
                .tabItem {
                    Image(systemName: "house")
                    Text("Home")
                }
            
            AccountView()
                .tabItem {
                    Image(systemName: "person")
                    Text("Account")
                }

            OrderView()
                .tabItem {
                    Image(systemName: "bag")
                    Text("Order")
                }
        }
       // .accentColor(.brandPrimary)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        AppetizersTabView()
    }
}
