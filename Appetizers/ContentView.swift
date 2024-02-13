//
//  ContentView.swift
//  Appetizers
//
//  Created by Kapil Kumar on 25/01/24.
//

import SwiftUI

struct AppetizersView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Text("Hello, world!")
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        AppetizersView()
    }
}
