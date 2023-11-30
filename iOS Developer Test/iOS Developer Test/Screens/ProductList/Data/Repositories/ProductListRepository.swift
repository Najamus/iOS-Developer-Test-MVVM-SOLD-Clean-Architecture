//
//  ProductListRepository.swift
//  iOS Developer Test
//
//  Created by Najam Us Saqib on 30/11/2023.
//

import Foundation

// MARK: - Product List Repository -
class ProductListRepository: ProductListRepositoryProtocol {
    private let productListDataSource = ProductListDataSource()

    // MARK: - Fetch Product List -
    func fetchProductList() async throws -> [ProductEntity] {
        let productListResponse = try await productListDataSource.fetchProductList()
        
        guard let results = productListResponse.results else { return [] }
        let products = results.compactMap { product in
            return ProductEntity(with: product)
        }
        
        return products
    }
}
