//
//  ProductListView.swift
//  Atlas
//
//  Created by Sravanthi Chinthireddy on 26/04/24.
//

import SwiftUI

struct ProductListView: View {
    let products: [ProductModel]
    let headerArray: [String] = ["Product",
                                 "WH Shelf",
                                 "Bay No.",
                                 "Proposed",
                                 "Total"]
    var body: some View {
        VStack(spacing: 0) {
            HStack(alignment: .center, content: {
                ForEach(0..<headerArray.count, id: \.self) { index in
                    ElementView(text: headerArray[index])
                    if index >= 0 && index < headerArray.count-1 { DividerView(vPadding: 0)
                    }
                }
            })
            .frame(height: 60)
            .background(Color.productListHeaderBg)
            Divider()
                .frame(height: 1)
                .background(Color.secondary)
                .padding(.vertical, 0)
            
            VStack(spacing:0) {
                ForEach(Array(products.enumerated()), id: \.element.id) { (index, product) in
                    VStack(spacing: 0) {
                        HStack {
                            ElementView(text: product.name)
                            DividerView(vPadding: 0)
                            ElementView(text: product.shelf)
                            DividerView(vPadding: 0)
                            ElementView(text: product.bayNumber)
                            DividerView(vPadding: 0)
                            ElementView(text: "\(product.proposed)")
                            DividerView(vPadding: 0)
                            ElementView(text: "\(product.total)")
                        }
                        if index >= 0 && index < products.count-1 { 
                            Divider()
                                .frame(height: 1)
                                .background(Color.secondary)
                                .padding(.vertical, 0)
                        }
                    }
                    
               }
                .frame(height: 40)
            }
        }
        .modifier(RoundedBorderModifier(cornerRadius: 10))
        
    }
}

struct ElementView: View {
    var text: String
    var body: some View {
        VStack {
            Text(text)
                .font(.system(size: 12))
                .foregroundColor(.black)
                .frame(maxWidth: .infinity)
        }
    }
}

//#Preview {
//    ProductListView(products: Constants.dummyDealer!.products)
//}
