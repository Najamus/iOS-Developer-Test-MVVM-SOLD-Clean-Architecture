//
//  ProductListEndpoint.swift
//  iOS Developer Test
//
//  Created by Najam Us Saqib on 30/11/2023.
//

import Foundation

// MARK: - Product List API Endpoint -
enum ProductListEndpoint: Endpoint {
    case fetchProductList
    
    public var path: String {
        switch self {
        case .fetchProductList:
            return "/default/dynamodb-writer"
        }
    }
    
    public var method: HTTPMethod {
        switch self {
        case .fetchProductList:
            return .GET
        }
    }

    public var headers: HTTPHeaders {
        switch self {
        case .fetchProductList:
            return nil
        }
    }
    
    func body() throws -> Data? {
        switch self {
        case .fetchProductList:
            return nil
        }
    }
}
