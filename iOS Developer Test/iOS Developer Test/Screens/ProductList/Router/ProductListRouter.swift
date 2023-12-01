//
//  ProductListRouter.swift
//  iOS Developer Test
//
//  Created by Najam Us Saqib on 30/11/2023.
//

import SwiftUI

// MARK: - Product List Router -
enum ProductListRouter {
    static func makeProductDetailsView(with product: Product) -> some View {
        let viewModel = ProductDetailsViewModel(product: product)
        let view = ProductDetailsView(viewModel: viewModel)
        return view
    }
}
