//
//  MoyaProvider + extensions.swift
//  MofumofuKit
//
//  Created by saminos on 21/01/24.
//  Copyright © 2024 amin.id. All rights reserved.
//

import Foundation
import Moya

public extension MoyaProvider<TargetType>{
    static func stubProvider<Target: TargetType>() -> MoyaProvider<Target> {
        MoyaProvider<Target>(endpointClosure: customEndpointClosure, stubClosure: MoyaProvider<Target>.immediatelyStub)
    }
    
    static func customEndpointClosure<T: TargetType>(_ target: T) -> Endpoint {
        return Endpoint(url: URL(target: target).absoluteString,
                        sampleResponseClosure: { .networkResponse(200, target.sampleData) },
                        method: target.method,
                        task: target.task,
                        httpHeaderFields: target.headers)
    }
}
