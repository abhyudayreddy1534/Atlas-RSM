//
//  CheckoutScreen.swift
//  Atlas
//
//  Created by Sravanthi Chinthireddy on 26/04/24.
//

import SwiftUI

struct CheckoutScreen: View {
    var body: some View {
        ZStack {
//            Image("checkout")
//                .resizable()
//                .scaledToFill()
//            .ignoresSafeArea(.all)
            
            VStack(alignment: .center, spacing: 20) {
                Text("Good Job")
                    .font(.system(size: 36, weight: .black))
                    .foregroundStyle(.black)
                Text("You're all set !!")
                    .font(.system(size: 32, weight: .bold))
                    .foregroundStyle(.black)
                Text("Hang tight while the validator confirms and reviews your load")
                    .font(.system(size: 16, weight: .regular))
                    .foregroundStyle(.black)
                    .lineLimit(2)
                    .multilineTextAlignment(.center)
                Spacer()
                
                Button(action: {}, label: {
                    Text("Notify validator")
                })
                .padding(.horizontal, 20)
                .padding(.vertical, 10)
                .frame(width: UIScreen.main.bounds.width - 40)
                .foregroundStyle(.black)
                .background(
                    Capsule()
                        .fill(Color.skipButtonBg)
                )
            }
            .padding(.top, 150)
            .padding(.horizontal, 30)
            .padding(.bottom, 80)
        }
        .background(Gradient(colors: [.white, .black]))
        .background(ignoresSafeAreaEdges: .horizontal)
    }
}

#Preview {
    CheckoutScreen()
        .ignoresSafeArea(.all)
        .background(ignoresSafeAreaEdges: .all)
}
