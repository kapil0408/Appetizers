//
//  AppetizersDetailView.swift
//  Appetizers
//
//  Created by Kapil Kumar on 17/02/24.
//

import SwiftUI

struct AppetizersDetailView: View {
    
    @EnvironmentObject var order: Order
    let appetizer: Appetizer
    @Binding var isShowingDetail: Bool
    
    var body: some View {   
        VStack{
            AppetizerRemoteImage(urlString: appetizer.imageURL)
                .aspectRatio(contentMode: .fit)
                .frame(width: 300, height: 225)
            
            VStack{
                Text(appetizer.name)
                    .font(.title2)
                    .fontWeight(.semibold)
                
                Text(appetizer.description)
                    .multilineTextAlignment(.center)
                    .font(.body)
                    .padding()
                
                HStack(spacing: 40){
                    NutritionInfo(title: "Calories", value: appetizer.calories)
                    NutritionInfo(title: "Carbs", value: appetizer.carbs)
                    NutritionInfo(title: "Protein", value: appetizer.protein)
                }
            }
            Spacer()
            
            Button {
                print("tapped")
                order.add(appetizer)
                isShowingDetail = false
            } label: {
               APButton(title: "$\(appetizer.price, specifier: "%.2f") - Add to Order")
            }
            .padding(.bottom, 30)
        }
        .frame(width: 300, height: 525)
        .background(Color(.systemBackground))
        .cornerRadius(12)
        .shadow(radius: 40)
        .overlay ( Button {
            print("dismiss")
            isShowingDetail = false
        } label: {
            XDismissButton()
        }, alignment: .topTrailing )
    }
}

struct AppetizersDetailView_Previews: PreviewProvider {
    static var previews: some View {
        AppetizersDetailView(appetizer: MockData.sampleAppetizer, isShowingDetail: .constant(true))
    }
}

struct NutritionInfo: View
{
    var title: String
    var value: Int
    var body: some View{
        VStack(spacing: 5) {
            
            Text(title)
                .bold()
                .font(.caption)
            
            Text("\(value)")
                .foregroundColor(.secondary)
                .fontWeight(.semibold)
                .italic()
        }
    }
    
}
