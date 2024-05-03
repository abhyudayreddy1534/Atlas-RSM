//
//  UserInfoLabel.swift
//  Atlas
//
//  Created by Sravanthi Chinthireddy on 16/04/24.
//

import SwiftUI

struct UserInfoLabel: View {
    let title: String
    let value: String
    
    var body: some View {
        VStack {
            ZStack {
                RoundedRectangle(cornerRadius: 8)
                    .frame(width: 65, height: 65)
                Text(value)
                    .font(.callout)
                    .fontWeight(.semibold)
                    .foregroundStyle(.white)
            }
            Text(title)
                .font(.footnote)
        }
    }
}

#Preview {
    UserInfoLabel(title: "Travel Time",
                  value: "7.56")
}
