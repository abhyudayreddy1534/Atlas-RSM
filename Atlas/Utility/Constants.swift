//
//  Constants.swift
//  Atlas
//
//  Created by Sravanthi Chinthireddy on 16/04/24.
//

import Foundation

struct Constants {
    static let usersList: [UserLogin] = Bundle.main.decode("Users.json")
    static let users : [User] = Bundle.main.decode("MOCK_DATA.json")
    static let dummyUser = users.first
    static let dummyDealer = users.first?.dealers.first
}
