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
    @State private var selectedAppetizer: Appetizer?
    
    var body: some View {
        ZStack {
            NavigationView {
                List(viewModel.appetizers) { appetizer in
                    AppetizerListCell(appteizer:appetizer)
                        .onTapGesture {
                            selectedAppetizer = appetizer
                            isShowingDetail = true
                        }
                }
                .navigationTitle("Appetizers")
                .disabled(isShowingDetail)
            }
            .onAppear{
                viewModel.getAppetizers()
            }
            .blur(radius: isShowingDetail ? 20:0)
            if isShowingDetail {
                AppetizersDetailView(appetizer: selectedAppetizer!, isShowingDetail: $isShowingDetail)
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
