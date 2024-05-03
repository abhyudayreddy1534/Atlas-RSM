//
//  User.swift
//  Atlas
//
//  Created by Sravanthi Chinthireddy on 16/04/24.
//

import Foundation

struct User: Codable, Identifiable {
    let id: Int
    let temperatureInCelcius: Int
    let lastName: String
    let firstName: String
    let travelTime: Double
    let batteries: Int
    let weightInLbs: Int
    let preSoldCount: Int
    let truckNumber: String
    let routeTravelled : String
    let dealers: [Dealer]
    
    var wishString : String {
        let currentHour = getCurrentHour()
        var wishString = "Good evening"
        if currentHour >= 6 && currentHour < 12 {
            wishString = "Good morning"
        }
        else if currentHour >= 12 && currentHour <= 17 {
            wishString = "Good afternoon"
        }
        return "\(wishString), \(lastName)"
    }
    
    var temperatureStringInC : String {
        return "\(temperatureInCelcius)°C"
    }
    
    var weightStringInLbs: String {
        return "\(weightInLbs)Lbs"
    }
    
    var routeString: String {
        "Route : \(routeTravelled)"
    }
    
    func getCurrentHour() -> Int {
        let date = Date()
        let calendar = Calendar.current
        let hour = calendar.component(.hour, from: date)
        return hour
    }
}

