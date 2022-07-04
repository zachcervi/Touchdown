//
//  CodableBundleExtension.swift
//  Touchdown
//
//  Created by Zach Cervi on 7/4/22.
//

import Foundation

extension Bundle {
    func decode<T: Codable>(_ file: String) -> T {
        //1. Locate JSON File
        guard let url = self.url(forResource: file, withExtension: nil) else {
            fatalError("Failed to locate file in Bundle.")
        }
        //2. Create a property for data
        guard let data = try? Data(contentsOf: url) else {
            fatalError("Failed to load file from Bundle.")
        }
        //3. Create a decoder
        let decoder = JSONDecoder()
        //4. Create a property for decoded data
        guard let decodedData = try? decoder.decode(T.self, from: data) else {
            fatalError("Failed to decode file from Bundle.")
        }
        //5. Return the ready to use data
        return decodedData
    }
}
