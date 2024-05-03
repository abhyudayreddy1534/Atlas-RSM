//
//  DealerDetailHeaderView.swift
//  Atlas
//
//  Created by Sravanthi Chinthireddy on 25/04/24.
//

import SwiftUI

struct DealerDetailHeaderView: View {
    let dealer: DealerModel
    var body: some View {
        VStack (spacing: 15) {
            HStack {
                Circle()
                    .fill(Color.launch)
                    .frame(width: 80, height: 80)
                DealerNameLocationView(dealer: dealer)
                Spacer()
                VStack(alignment: .trailing) {
                    Text("Active")
                        .padding(.horizontal, 12)
                        .padding(.vertical, 5)
                        .font(.system(size: 14))
                        .fontWeight(.bold)
                        .foregroundStyle(Color.dealerActive)
                        .background(
                            Capsule()
                                .fill(Color.dealerActiveBg)
                        )
                    
                    Group {
                        HStack {
                            Link("View Profile", destination:  URL(string: "https://www.interstatebatteries.com/")!)
                            Image(systemName: "arrow.up.right.square")
                        }
                        .font(.footnote)
                    }
                    .foregroundColor(.secondary)
                }
            }
            HStack {
                DealerDetailHeaderItem(title: "Pre sold",
                                       value: "\(dealer.presoldBatteries)")
                DividerView(vPadding: 8)
                DealerDetailHeaderItem(title: "Battery Ct",
                                       value: "\(dealer.batteriesCount)")
                DividerView(vPadding: 8)
                DealerDetailHeaderItem(title: "Total weight",
                                       value: "\(dealer.weightInKgs)")
                DividerView(vPadding: 8)
                DealerDetailHeaderItem(title: "Last del",
                                       value: "\(dealer.deliveryDate)")
            }
            .frame(height: 70)
            .modifier(RoundedBorderModifier(cornerRadius: 10))
        }
    }
}

//#Preview {
//    DealerDetailHeaderView(dealer: Constants.dummyDealer!)
//}
