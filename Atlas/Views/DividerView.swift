//
//  DividerView.swift
//  Atlas
//
//  Created by Sravanthi Chinthireddy on 26/04/24.
//

import SwiftUI

struct DividerView: View {
    let vPadding: CGFloat
    var body: some View {
        Divider()
            .frame(width: 1)
            .background(Color.secondary)
            .padding(.vertical, vPadding)
    }
}
