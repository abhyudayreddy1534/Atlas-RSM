//
//  HomeView.swift
//  Atlas
//
//  Created by Sravanthi Chinthireddy on 12/04/24.
//

import SwiftUI

struct HomeView: View {
    
    let user = Constants.dummyUser
    let dealers = Constants.dummyUser?.dealers
    var truckID: String = ""
        
    @StateObject var viewModel = DealerViewModel()
    
    var body: some View {
        NavigationView(content: {
            VStack {
                UserHeaderView(user: user!)
                List {
                    ForEach(viewModel.dealers, id: \.dealer.id) { dealer in
                        NavigationLink(destination: DealerDetailView(dealer: dealer)) { DealerRowItem(dealer: dealer)
                                .listRowSeparator(.hidden)
                        }                        
                    }
                }
                .listStyle(.plain)
              
            }
            .onAppear(perform: {
                viewModel.fetchAllDealers(with: truckID)
            })
            .navigationTitle("Dealer Visits")
            .navigationBarTitleDisplayMode(.inline)
        })
        
        
    }
}

#Preview {
    HomeView()
}
