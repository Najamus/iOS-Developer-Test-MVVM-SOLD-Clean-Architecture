//
//  GetProductListUseCase.swift
//  iOS Developer Test
//
//  Created by Najam Us Saqib on 30/11/2023.
//

import Foundation

// MARK: - Get Product List Use Case -
class GetProductListUseCase {
    private let repository: ProductListRepositoryProtocol
    
    init(_ repository: ProductListRepositoryProtocol) {
        self.repository = repository
    }
    
    // MARK: - Extecute Use Case -
    func execute() async throws -> [Product] {
        let productEntityList = try await repository.fetchProductList()
        let productList = productEntityList.compactMap { entity in
            return Product(with: entity)
        }
        
        return productList
    }
}
