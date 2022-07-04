//
//  Shop.swift
//  Touchdown
//
//  Created by Zach Cervi on 7/4/22.
//

import Foundation

class Shop: ObservableObject {
    @Published var showingProduct: Bool = false
    @Published var selectedProduct: Product? = nil
    
}
