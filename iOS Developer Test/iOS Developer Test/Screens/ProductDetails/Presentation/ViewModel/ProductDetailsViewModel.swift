//
//  ProductDetailsViewModel.swift
//  iOS Developer Test
//
//  Created by Najam Us Saqib on 30/11/2023.
//

import Foundation

// MARK: - Product Details ViewModel Interface -
protocol ProductDetailsViewModelProtocol: ObservableObject {
    var product: Product { get set }
}

// MARK: - Product Details ViewModel -
class ProductDetailsViewModel {
    @Published var product: Product
    
    init(product: Product) {
        self.product = product
    }
}

extension ProductDetailsViewModel: ProductDetailsViewModelProtocol {
    
}
