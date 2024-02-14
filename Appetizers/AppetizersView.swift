//
//  AppetizersView.swift
//  Appetizers
//
//  Created by Kapil Kumar on 13/02/24.
//

import SwiftUI

struct AppetizersView: View {
    @StateObject var viewModel = AppetizerListViewModel()
    
    var body: some View {
        NavigationView {
            List(viewModel.appetizers) { appetizer in
                AppetizerListCell(appteizer:appetizer)
            }
            .navigationTitle("Appetizers")
        }
        .onAppear{
            viewModel.getAppetizers()
        }
    }
}

struct AppetizersView_Previews: PreviewProvider {
    static var previews: some View {
        AppetizersView()
    }
}
