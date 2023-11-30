//
//  AppRouter.swift
//  iOS Developer Test
//
//  Created by Najam Us Saqib on 30/11/2023.
//

import SwiftUI


// MARK: - Application Router -
enum AppRouter {
    
    // MARK: - Make Product List View -
    static func makeProductListView() -> some View {
        let viewModel = ProductListViewModel()
        let view = ProductListView(viewModel: viewModel)
        return view
    }
    
}
