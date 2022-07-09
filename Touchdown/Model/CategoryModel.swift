//
//  CategoryModel.swift
//  Touchdown
//
//  Created by Iuliia Volkova on 09.07.2022.
//

import Foundation

struct Category: Codable, Identifiable {
    let id: Int
    let name: String
    let image: String
}
