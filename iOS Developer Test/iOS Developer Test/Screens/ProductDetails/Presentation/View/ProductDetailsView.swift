//
//  ProductDetailsView.swift
//  iOS Developer Test
//
//  Created by Najam Us Saqib on 30/11/2023.
//

import SwiftUI

// MARK: - Product Details View -
struct ProductDetailsView<Model>: View where Model: ProductDetailsViewModelProtocol {
    @StateObject private var viewModel: Model

    init(viewModel: Model) {
        _viewModel = StateObject(wrappedValue: viewModel)
    }
    
    // MARK: - Body View -
    var body: some View {
        ScrollView {
            VStack {
                CacheAsyncImage(url: viewModel.product.imageUrl) { image in
                    image
                        .image?
                        .resizable()
                }
                .scaledToFit()
                .frame(height: 300)
                .containerRelativeFrame(.horizontal)
                
                HStack {
                    Text(viewModel.product.name)
                        .textCase(.uppercase)
                        .font(.subheadline)
                    
                    Spacer()
                    Divider()
                    Spacer()
                    
                    Text(viewModel.product.price)
                        .font(.headline)
                }
                .padding(12)
            }
        }
    }
}

#Preview {
    ProductDetailsView(viewModel: ProductDetailsViewModel(product: Product(id: "1", name: "Macbook Pro", price: "USD 1000", imageUrl: nil, thumbnailUrl: nil)))
}
