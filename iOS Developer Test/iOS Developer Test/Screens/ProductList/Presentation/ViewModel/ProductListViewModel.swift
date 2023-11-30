//
//  ProductListViewModel.swift
//  iOS Developer Test
//
//  Created by Najam Us Saqib on 30/11/2023.
//

import SwiftUI

// MARK: - Product List ViewModel Interface -
protocol ProductListViewModelProtocol: ObservableObject {
    var isLoading: Bool { get set }
    var productList: [Product] { get set }
    func fetchProductList()
}

// MARK: - Product List ViewModel -
class ProductListViewModel {
    @Published var productList: [Product]
    var isLoading: Bool = false
    private let getProductListUseCase = GetProductListUseCase(DependencyInjection.getProductListRepository())
    
    init() {
        productList = []
        fetchProductList()
    }
}

// MARK: - Fetch Product List with Async/Await -
extension ProductListViewModel: ProductListViewModelProtocol {
    func fetchProductList() {
        isLoading = true
        Task {
            do {
                let list = try await getProductListUseCase.execute()
                DispatchQueue.main.async {
                    self.isLoading = false
                    self.productList = list
                }
            } catch {
                self.isLoading = false
                print("An error occurred: \(error)")
            }
        }
    }
}
