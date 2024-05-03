//
//  DealerDetailView.swift
//  Atlas
//
//  Created by Sravanthi Chinthireddy on 25/04/24.
//

import SwiftUI

struct DealerDetailView: View {
    let dealer: DealerModel
    var body: some View {
        VStack(alignment: .leading, spacing: 20) {
            DealerDetailHeaderView(dealer: dealer)
            ScrollView(.vertical, content: {
                ProductListView(products: dealer.products)
                    .padding(.horizontal, 10)
                    .padding(.vertical, 5)
                NotesView(notes: dealer.notes)
                    .padding(.horizontal, 10)
                HStack {
                    //                Skip this for now button
                    Button(action: {
                        
                    }, label: {
                        Text("Skip this for now")
                            .font(.system(size: 16, weight: .bold))
                            .foregroundStyle(.black)
                    })
                    .padding(.horizontal, 18)
                    .padding(.vertical, 8)
                    .background(
                        Capsule(style: .continuous)
                            .fill(Color.skipButtonBg)
                    )
                    Spacer(minLength: 10)
                    //                load Complete button
                    Button(action: {
                        
                    }, label: {
                        Text("Load Complete")
                            .font(.system(size: 16, weight: .bold))
                            .foregroundStyle(.white)
                    })
                    .padding(.horizontal, 18)
                    .padding(.vertical, 8)
                    .background(
                        Capsule(style: .continuous)
                            .fill(Color.loadCompleteButtonBg)
                    )
                    
                }
                .padding(.horizontal, 10)
                .padding(.vertical, 10)
            })
        }
        .padding()
        .navigationTitle("Dealer Info")
        .toolbarTitleDisplayMode(.inline)
        .toolbar {
            ToolbarItem(placement: .topBarTrailing) {
                NavigationLink(destination: ReviewLoadView()) {
                    Text("Review")
                        .font(.system(size: 16))
                        .fontWeight(.medium)
                        .foregroundStyle(dealer.isLoadCompleted ?
                                         Color.loadCompleteButtonBg :
                                            Color.productListHeaderBg)
                }
                .disabled(!dealer.isLoadCompleted)
            }
        }
    }
}

//#Preview {
//    DealerDetailView(dealer: Constants.dummyDealer!)
//}
