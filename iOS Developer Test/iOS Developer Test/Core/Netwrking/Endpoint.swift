//
//  Endpoint.swift
//  iOS Developer Test
//
//  Created by Najam Us Saqib on 30/11/2023.
//

import Foundation

// MARK: - HTTPMethod -
public enum HTTPMethod: String {
    case GET
    case POST
    case PUT
    case PATCH
    case DELETE
}

// MARK: - HTTPHeaders -
public typealias HTTPHeaders = [String : String]?

// MARK: - Endpoint -
protocol Endpoint {
    var path: String { get }
    var method: HTTPMethod { get }
    var headers: HTTPHeaders { get }
    func body() throws -> Data?
}

extension Endpoint {
    func urlRequest() throws -> URLRequest {
        guard let url = URL(string: "https://ey3f2y0nre.execute-api.us-east-1.amazonaws.com" + path) else {
            throw NetworkError.invalidRequest
        }
        var request = URLRequest(url: url)
        request.httpMethod = method.rawValue
        request.allHTTPHeaderFields = headers
        request.httpBody = try body()
        return request
    }
}

// MARK: - NetworkError -
typealias HTTPCode = Int
enum NetworkError: Swift.Error {
    case notFound
    case badRequest
    case invalidRequest
    case httpCode(HTTPCode)
    case responseUnsuccessful
}

extension NetworkError: LocalizedError {
    var errorDescription: String? {
        switch self {
        case .notFound: return "The requested url was not found"
        case .badRequest: return "Bad Request"
        case .invalidRequest: return "Invalid Request"
        case let .httpCode(code): return "Unexpected HTTP code: \(code)"
        case .responseUnsuccessful: return "Response Unsuccessful"
        }
    }
}
