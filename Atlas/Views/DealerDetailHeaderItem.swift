//
//  DealerDetailHeaderItem.swift
//  Atlas
//
//  Created by Sravanthi Chinthireddy on 26/04/24.
//

import SwiftUI

struct DealerDetailHeaderItem: View {
    let title: String
    let value: String
    var body: some View {
        VStack(alignment: .center, spacing: 15) {
            Text(title)
                .font(.system(size: 12))
                .lineLimit(1)
            Text(value)
                .font(.system(size: 12))
                .lineLimit(1)
                .fontWeight(.bold)
        }
        .padding(.vertical, 8)
        .padding(.horizontal, 5)
    }
}

#Preview {
    DealerDetailHeaderItem(title: "Pre sold", value: "120")
}
