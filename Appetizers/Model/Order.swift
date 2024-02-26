//
//  order.swift
//  Appetizers
//
//  Created by Kapil Kumar on 26/02/24.
//

import Foundation

final class Order: ObservableObject{
    
    @Published var item:[Appetizer] = []
    
    func add(_ appetizer: Appetizer){
        item.append(appetizer)
    }
}
