//
//  AppetizersView.swift
//  Appetizers
//
//  Created by Kapil Kumar on 13/02/24.
//

import SwiftUI

struct AppetizersView: View {
    var body: some View {
        NavigationView {
            List(MockData.appetizers) { appetizer in
                Text(appetizer.name)
            }
            .navigationTitle("Appetizers")
        }
    }
}

struct AppetizersView_Previews: PreviewProvider {
    static var previews: some View {
        AppetizersView()
    }
}
