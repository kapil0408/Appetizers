//
//  OrderView.swift
//  Appetizers
//
//  Created by Kapil Kumar on 13/02/24.
//

import SwiftUI
import Foundation

struct OrderView: View {
    
    @State private var orderItems = MockData.orderItems
    
    var body: some View {
        NavigationView {
            ZStack{
                VStack{
                    List{
                        ForEach(orderItems) { appetizer in
                            AppetizerListCell(appteizer: appetizer)
                        }
                        .onDelete(perform: deleteItems)
                    }
                    .listStyle(PlainListStyle())
                    
                    Button{
                        print("Order Placed")
                    } label: {
                        APButton(title: "$99.99 - Place Order")
                    }
                    .padding(.bottom, 25)
                }
                
                if orderItems.isEmpty{
                    EmptyState(imageName: "empty-order", message: "You have no items in your order. Please add an appetizer!")
                }
            }
            .navigationTitle("Orders")
        }
    }
    
    func deleteItems(at offesets: IndexSet){
        orderItems.remove(atOffsets: offesets)
    }
}

struct OrderView_Previews: PreviewProvider {
    static var previews: some View {
        OrderView()
    }
}
