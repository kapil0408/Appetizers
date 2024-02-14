//
//  AppetizersView.swift
//  Appetizers
//
//  Created by Kapil Kumar on 13/02/24.
//

import SwiftUI

struct AppetizersView: View {
    
    @State private var appetizers: [Appetizer] = []
    
    var body: some View {
        NavigationView {
            List(MockData.appetizers) { appetizer in
                AppetizerListCell(appteizer:appetizer)
            }
            .navigationTitle("Appetizers")
        }
        
    }
    
    func getAppetizers(){
        NetworkManager.shared.getAppetizers { result in
            switch result {
            case .success(let appetizers):
                self.appetizers = appetizers
            case .failure(let error):
                print(error.localizedDescription)
                
            }
        }
    }
}

struct AppetizersView_Previews: PreviewProvider {
    static var previews: some View {
        AppetizersView()
    }
}
