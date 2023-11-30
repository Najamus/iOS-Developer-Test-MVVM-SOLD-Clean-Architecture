//
//  ProductDataModel.swift
//  iOS Developer Test
//
//  Created by Najam Us Saqib on 30/11/2023.
//

import Foundation

// MARK: - Product Request Data Model -
struct ProductDataModel: Codable {
    let uid: String
    let name: String
    let price: String
    let image_ids: [String]?
    let image_urls: [String]?
    let image_urls_thumbnails: [String]?
}
