//
//  RoundedBorderModifier.swift
//  Atlas
//
//  Created by Sravanthi Chinthireddy on 26/04/24.
//

import SwiftUI

struct RoundedBorderModifier: ViewModifier {
    let cornerRadius : CGFloat
    func body(content: Content) -> some View {
        content
            .overlay(RoundedRectangle(cornerRadius: cornerRadius)
                .stroke(Color.secondary, lineWidth: 1))
    }
}
