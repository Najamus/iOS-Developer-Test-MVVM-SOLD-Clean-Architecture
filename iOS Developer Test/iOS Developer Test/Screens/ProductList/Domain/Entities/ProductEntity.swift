//
//  ProductEntity.swift
//  iOS Developer Test
//
//  Created by Najam Us Saqib on 30/11/2023.
//

import Foundation

// MARK: - Product Entity -
class ProductEntity {
    let id: String
    let name: String
    let price: String
    let image: String
    let thumbnail: String
    
    init?(with productResponse: ProductDataModel) {
        self.id = productResponse.uid
        self.name = productResponse.name
        self.price = productResponse.price
        self.image = productResponse.image_urls?.last ?? ""
        self.thumbnail = productResponse.image_urls_thumbnails?.last ?? ""
    }
}
