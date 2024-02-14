//
//  AppetizerListView.swift
//  Appetizers
//
//  Created by Kapil Kumar on 13/02/24.
//

import SwiftUI

struct AppetizerListCell: View {

    var appteizer: Appetizer
    var body: some View {
        HStack{
            Image("asian-flank-steak")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 120, height: 90)
                .cornerRadius(8)
            VStack (alignment: .leading, spacing: 8){
                Text(appteizer.name)
                    .font(.title2)
                    .fontWeight(.medium)
                
                Text("$\(appteizer.price, specifier: "%.2f")")
                    .foregroundColor(.secondary)
                    .fontWeight(.semibold)
            }
            .padding(.leading)
        }
    }
}

struct AppetizerListCell_Previews: PreviewProvider {
    static var previews: some View {
        AppetizerListCell(appteizer:MockData.sampleAppetizer)
    }
}
