//
//  NetworkProvider.swift
//  MofumofuKit
//
//  Created by saminos on 21/01/24.
//  Copyright © 2024 amin.id. All rights reserved.
//

import Foundation
import Moya

public protocol NetworkProviding {
    func request<T: Decodable, Target: TargetType>(_ target: Target) async throws -> T
    func request<T: Decodable, Target: TargetType>(_ target: Target, provider: MoyaProvider<Target>) async throws -> T
}

public class NetworkProvider: NetworkProviding {
    public func request<T, Target>(_ target: Target) async throws -> T where T : Decodable, Target : Moya.TargetType {
        try await request(target, provider: MoyaProvider<Target>(plugins: [NetworkLoggerPlugin()]))
    }
    
    public func request<T: Decodable, Target: TargetType>(_ target: Target, provider: MoyaProvider<Target>) async throws -> T {
        try await withCheckedThrowingContinuation { continuation in
            provider.request(target) { result in
                switch result {
                case .success(let response):
                    guard let res = try? JSONDecoder.default.decode(T.self, from: response.data) else {
                        continuation.resume(throwing: MoyaError.jsonMapping(response))
                        return
                    }
                    continuation.resume(returning: res)
                case .failure(let error):
                    continuation.resume(throwing: error)
                }
            }
        }
    }
}

private struct NetworkProviderKey: InjectionKey {
    static var currentValue: NetworkProviding = NetworkProvider()
}

public extension InjectedValues {
    var networkProvider: NetworkProviding {
        get { Self[NetworkProviderKey.self] }
        set { Self[NetworkProviderKey.self] = newValue }
    }
}
