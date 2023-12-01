//
//  ProductResponseDataModel.swift
//  iOS Developer Test
//
//  Created by Najam Us Saqib on 30/11/2023.
//

import Foundation

// MARK: - Product Response Model -
struct ProductResponseDataModel: Codable {
    let results: [ProductDataModel]?
}
