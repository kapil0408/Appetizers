//
//  AppetizersView.swift
//  Appetizers
//
//  Created by Kapil Kumar on 13/02/24.
//

import SwiftUI

struct AppetizersView: View {
    @StateObject var viewModel = AppetizerListViewModel()
    @State private var isShowingDetail = false
    
    var body: some View {
        ZStack {
            NavigationView {
                List(viewModel.appetizers) { appetizer in
                    AppetizerListCell(appteizer:appetizer)
                        .onTapGesture {
                            isShowingDetail = true
                        }
                }
                .navigationTitle("Appetizers")
            }
            .onAppear{
                viewModel.getAppetizers()
            }
            
            if isShowingDetail {
                AppetizersDetailView(appetizer: MockData.sampleAppetizer)
            }
            
            if(viewModel.isLoading){
                LoadingView()
            }
        }
        .alert(item:$viewModel.alertItem) { alertItem in
            Alert(title: alertItem.title, message: alertItem.message, dismissButton: alertItem.dismissButton)
        }
    }
}

struct AppetizersView_Previews: PreviewProvider {
    static var previews: some View {
        AppetizersView()
    }
}
