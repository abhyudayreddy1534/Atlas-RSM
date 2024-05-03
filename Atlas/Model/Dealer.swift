//
//  Dealer.swift
//  Atlas
//
//  Created by Sravanthi Chinthireddy on 16/04/24.
//

import Foundation

struct Dealer: Codable, Identifiable {
    let id: Int
    let name: String
    let location: String
    let totalBatteries: Int
    let status: Bool
    let profileURL: String
    let presoldBatteries: Int
    let batteriesCount: Int
    let totalWeightInLbs: Int
    let totalWeightInKgs: Int
    let lastDeliveredDate: String
    let loadCompleted: Bool
    let loadSkipped: Bool
    let products: [Product]
    let notes: [Note]
    
    var weightInKgs : String {
        "\(totalWeightInKgs) Kgs"
    }
    
    var deliveryDate: String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "MM/dd/yyyy"
        
        guard let date = dateFormatter.date(from: lastDeliveredDate) else { return "" }
        dateFormatter.dateFormat = "EEE MM/dd/yy"
        
        return dateFormatter.string(from: date)
    }
}
