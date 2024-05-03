//
//  UserHeaderView.swift
//  Atlas
//
//  Created by Sravanthi Chinthireddy on 16/04/24.
//

import SwiftUI

struct UserHeaderView: View {
    let user: User
    
    var body: some View {
        VStack {
            HStack(alignment: .top) {
                VStack(alignment: .leading, spacing: 15) {
                    Text(user.wishString)
                        .font(.title2)
                        .fontWeight(.bold)
                    Text(Date().formatted(date: .complete, time: .omitted))
                }
                Spacer()
                VStack(alignment: .center, spacing: 6) {
                    Image(systemName: "sun.max.fill")
                        .font(.title)
                        .foregroundStyle(.yellow)
                    Text(user.temperatureStringInC)
                        .font(.title3)
                        .fontWeight(.semibold)
                }
            }
            .padding()
            HStack(content: {
                UserInfoLabel(title: "Travel Time",
                              value: "\(user.travelTime)")
                Spacer()
                UserInfoLabel(title: "Batteries",
                              value: "\(user.batteries)")
                Spacer()
                UserInfoLabel(title: "Weight",
                              value: user.weightStringInLbs)
                Spacer()
                UserInfoLabel(title: "Pre-Sold",
                              value: "\(user.preSoldCount)")
            })
            .padding(.horizontal, 15)
        }
        
    }
}

#Preview {
    UserHeaderView(user: Constants.dummyUser!)
}
