//
//  AppetizerListViewModel.swift
//  Appetizers
//
//  Created by Kapil Kumar on 14/02/24.
//

import Foundation
import SwiftUI

class AppetizerListViewModel : ObservableObject {
    
    @Published var appetizers: [Appetizer] = []

    
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

