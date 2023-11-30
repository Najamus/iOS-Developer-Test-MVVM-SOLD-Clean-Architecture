//
//  ProductListDataSource.swift
//  iOS Developer Test
//
//  Created by Najam Us Saqib on 30/11/2023.
//

import Foundation

// MARK: - Product List Data Source -
class ProductListDataSource {
    
    // MARK: - Fetch Product List Response Data Model -
    func fetchProductList() async throws -> ProductResponseDataModel {
        let endpoint = ProductListEndpoint.fetchProductList
        return try await Networking.shared.request(endpoint)
    }
    
}
