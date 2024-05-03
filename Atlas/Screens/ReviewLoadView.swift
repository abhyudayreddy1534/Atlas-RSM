//
//  ReviewLoadView.swift
//  Atlas
//
//  Created by Sravanthi Chinthireddy on 26/04/24.
//

import SwiftUI

struct ReviewLoadView: View {
    let user: User = Constants.dummyUser!
    var body: some View {
        VStack(alignment: .center, spacing: 20, content: {
            
            HStack(spacing: 30) {
                Image(systemName: "box.truck.fill")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 100, height: 100)
                VStack(alignment: .leading, spacing: 12, content: {
                    Text(user.truckNumber)
                        .font(.title2)
                        .fontWeight(.bold)
                    Text(user.routeString)
                        .font(.system(size: 16, weight: .medium))
                        .foregroundStyle(Color.secondary)
                })
            }
            ReviewDataRow(title: "Total dealer visits",
                          value: "\(user.dealers.count)")
            ReviewDataRow(title: "Total batteries",
                          value: "\(user.batteries)")
            ReviewDataRow(title: "Pre-sold count",
                          value: "\(user.preSoldCount)")
            ReviewDataRow(title: "Total weight",
                          value: "\(user.weightStringInLbs)")

//            Button(action: {
                NavigationLink(destination: CheckoutScreen()) {
                    Text("Checkout")
                        .foregroundStyle(Color.white)
                    
                }
                .padding(.horizontal, 20)
                .padding(.vertical, 10)
                .frame(width: UIScreen.main.bounds.width - 40)
                .background(
                    Capsule()
                        .fill(Color.loadCompleteButtonBg)
                )
//            }, label: {
//                Text("Checkout")
//                    .foregroundStyle(Color.white)
//                
//            })
            
        })
        .padding(.horizontal, 20)
        .navigationTitle("Review load")
    }
}

struct ReviewDataRow: View {
    let title: String
    let value: String
    var body: some View {
        HStack {
            Text(title)
                .font(.system(size: 16, weight: .regular))
                .frame(alignment: .leading)
                .foregroundStyle(Color.secondary)
            Spacer()
            Text(value)
                .font(.system(size: 16, weight: .medium))
                .frame(alignment: .trailing)
        }
    }
}

#Preview {
    ReviewLoadView()
}
