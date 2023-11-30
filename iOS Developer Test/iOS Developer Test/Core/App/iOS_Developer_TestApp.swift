//
//  iOS_Developer_TestApp.swift
//  iOS Developer Test
//
//  Created by Najam Us Saqib on 30/11/2023.
//

import SwiftUI

@main
struct iOS_Developer_TestApp: App {
    var body: some Scene {
        WindowGroup {
            AppRouter.makeProductListView()
        }
    }
}
