//
//  Product.swift
//  Atlas
//
//  Created by Sravanthi Chinthireddy on 16/04/24.
//

import Foundation

struct Product: Codable, Identifiable {
    let id: Int
    let name: String
    let shelf: String
    let bayNumber: String
    let proposed: Int
    let total: Int
}
