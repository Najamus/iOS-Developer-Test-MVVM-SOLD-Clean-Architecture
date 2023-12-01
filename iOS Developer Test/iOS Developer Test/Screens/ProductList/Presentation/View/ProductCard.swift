//
//  ProductCard.swift
//  iOS Developer Test
//
//  Created by Najam Us Saqib on 30/11/2023.
//

import SwiftUI

// MARK: - Card View For Single Item Product -
struct ProductCard: View {
    var product: Product

    // MARK: - Body View -
    var body: some View {
        HStack {
            CacheAsyncImage(url: product.thumbnailUrl) { image in
                image
                    .image?
                    .resizable()
            }
            .scaledToFit()
            .frame(width: 80, height: 80)
            .clipShape(UnevenRoundedRectangle(topLeadingRadius: 16, bottomTrailingRadius: 16))

            
            Text(product.name)
                .padding(.leading, 24)
                .textCase(.uppercase)
                .font(.headline)
        }
    }
}

#Preview {
    ProductCard(product: Product(id: "1", name: "Macboook Pro", price: "USD 1000", imageUrl: nil, thumbnailUrl: nil))
}
