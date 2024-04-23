//
//  DependencyInjection.swift
//  iOS Developer Test
//
//  Created by Najam Us Saqib on 30/11/2023.
//

import Foundation

// MARK: - Dependency Injection Delegate -
protocol DependencyInjectionProtocol {
    static func getProductListRepository() -> ProductListRepositoryProtocol
}

// MARK: - Enum Dependency Injection -
enum DependencyInjection: DependencyInjectionProtocol {
    
    // MARK: - Get Product List Repository -
    static func getProductListRepository() -> ProductListRepositoryProtocol {
        return ProductListRepository()
    }
    
}
