//
//  Shop.swift
//  Touchdown
//
//  Created by Iuliia Volkova on 09.07.2022.
//

import Foundation

class Shop: ObservableObject {
    @Published var showingProduct: Bool = false
    @Published var selectedProduct: Product? = nil
}
