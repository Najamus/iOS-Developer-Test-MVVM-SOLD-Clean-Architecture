//
//  ProductListRepositoryProtocol.swift
//  iOS Developer Test
//
//  Created by Najam Us Saqib on 30/11/2023.
//

import Foundation

// MARK: - Product List Repository Protocol -
protocol ProductListRepositoryProtocol {
    func fetchProductList() async throws -> [ProductEntity]
}
