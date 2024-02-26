//
//  order.swift
//  Appetizers
//
//  Created by Kapil Kumar on 26/02/24.
//

import Foundation

final class Order: ObservableObject{
    
    @Published var items:[Appetizer] = []
    var totalPrice:Double {
        items.reduce(0) { $0 + $1.price }
    }
    
    
    func add(_ appetizer: Appetizer){
        items.append(appetizer)
    }
    
    func deleteItems(at offesets: IndexSet){
        items.remove(atOffsets: offesets)
    }
    
}
