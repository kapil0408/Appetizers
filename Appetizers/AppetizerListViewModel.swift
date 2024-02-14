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
    @Published var alertItem: AlertItem?
    
    func getAppetizers(){
        NetworkManager.shared.getAppetizers { result in
            
            DispatchQueue.main.async {
                switch result
                {
                case .success(let appetizers):
                    self.appetizers = appetizers
                case .failure(let error):
                    switch error {
                    case .invalidURL:
                        self.alertItem = AlertContext.invalidURL
                    case .invalidResponse:
                        self.alertItem = AlertContext.invalidResponse
                    case .invalidData:
                        self.alertItem = AlertContext.invalidData
                    case .unableToComplete:
                        self.alertItem = AlertContext.unableToComplete
                    }
                }
            }
        }
    }
}

