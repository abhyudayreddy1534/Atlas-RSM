//
//  CodableBundleExtension.swift
//  Atlas
//
//  Created by Sravanthi Chinthireddy on 16/04/24.
//

import Foundation

extension Bundle {
    func decode<T: Codable>(_ file: String) -> T {
        guard let url = self.url(forResource: file, withExtension: nil) else {
            fatalError("\(file) not found in the bundle")
        }
        
        guard let data = try? Data(contentsOf: url) else {
            fatalError("Failed to load file \(file) from bundle")
        }
        
        let decoder = JSONDecoder()
        
        guard let loaded = try? decoder.decode(T.self, from: data) else {
            fatalError("Failed to decode \(file)")
        }
        
        return loaded
    }
}
