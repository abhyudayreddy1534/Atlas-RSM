//
//  DealerRowItem.swift
//  Atlas
//
//  Created by Sravanthi Chinthireddy on 16/04/24.
//

import SwiftUI

struct DealerRowItem: View {
    let dealer: DealerModel
    var body: some View {
        HStack {
            DealerNameLocationView(dealer: dealer)
            Spacer()
            VStack(alignment: .center) {
                Text("\(dealer.totalBatteries)")
                    .fontWeight(.medium)
                Text("Batteries")
                    .font(.footnote)
            }
            Image(systemName: "chevron.right")
                .font(.largeTitle)
                .foregroundStyle(.secondary)
        }
        .padding(10)
        .modifier(RoundedBorderModifier(cornerRadius: 10))
        .background(dealer.isLoadCompleted ?
                    Color.dealerLoadCompleteBg :
                        dealer.isLoadCompleted ?
                    Color.dealerSkippedBg :
                        Color.white)
        .clipShape(RoundedRectangle(cornerRadius: 10))
        
    }
}

//#Preview {
//    DealerRowItem(dealer: Constants.dummyDealer!)
//}
