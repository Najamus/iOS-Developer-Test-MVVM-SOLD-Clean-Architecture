//
//  Product.swift
//  iOS Developer Test
//
//  Created by Najam Us Saqib on 30/11/2023.
//

import Foundation

// MARK: - Product Model -
struct Product: Hashable {
    let id: String
    let name: String
    let price: String
    let imageUrl: URL?
    let thumbnailUrl: URL?
    
    init(id: String, name: String, price: String, imageUrl: URL?, thumbnailUrl: URL?) {
        self.id = id
        self.name = name
        self.price = price
        self.imageUrl = imageUrl
        self.thumbnailUrl = thumbnailUrl
    }
    
    init?(with entity: ProductEntity) {
        self.id = entity.id
        self.name = entity.name
        self.price = entity.price
        self.imageUrl = URL(string: entity.image)
        self.thumbnailUrl = URL(string: entity.thumbnail)
    }
}
