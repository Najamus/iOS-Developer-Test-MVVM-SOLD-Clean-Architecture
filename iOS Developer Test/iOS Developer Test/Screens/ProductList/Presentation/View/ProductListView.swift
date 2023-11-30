//
//  ProductListView.swift
//  iOS Developer Test
//
//  Created by Najam Us Saqib on 30/11/2023.
//

import SwiftUI

// MARK: - Product List View -
struct ProductListView<Model>: View where Model: ProductListViewModelProtocol {
    @StateObject private var viewModel: Model
    
    init (viewModel: Model) {
        _viewModel = StateObject(wrappedValue: viewModel)
    }
    
    // MARK: - Body View -
    var body: some View {
        NavigationStack {
            List {
                ForEach(viewModel.productList, id: \.self) { product in
                    NavigationLink(destination: ProductListRouter.makeProductDetailsView(with: product)) {
                        ProductCard(product: product)
                    }
                }
            }
            .navigationTitle("Product List")
        }
    }
}

#Preview {
    ProductListView(viewModel: ProductListViewModel())
}
