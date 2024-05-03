//
//  Apollo.swift
//  Atlas
//
//  Created by Sravanthi Chinthireddy on 29/04/24.
//

import Foundation
import Apollo

class Network {
  static let shared = Network()

  private init() {}

  private(set) lazy var apollo = ApolloClient(url: URL(string: "http://localhost:1234/graphql")!)
}
