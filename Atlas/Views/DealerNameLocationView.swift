//
//  DealerNameLocationView.swift
//  Atlas
//
//  Created by Sravanthi Chinthireddy on 25/04/24.
//

import SwiftUI

struct DealerNameLocationView: View {
    let dealer: DealerModel
    var body: some View {
        VStack(alignment: .leading) {
            Text(dealer.name)
                .fontWeight(.semibold)
            Text("\(dealer.location), Dallas, TX")
                .font(.footnote)
        }
    }
}

//#Preview {
//    DealerNameLocationView(dealer: Constants.dummyDealer!)
//}
