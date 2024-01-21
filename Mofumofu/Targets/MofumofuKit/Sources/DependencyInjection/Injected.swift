//
//  Injected.swift
//  MofumofuKit
//
//  Created by saminos on 20/01/24.
//  Copyright © 2024 amin.id. All rights reserved.
//

import Foundation

@propertyWrapper
public struct Injected<T> {
    private let keyPath: WritableKeyPath<InjectedValues, T>
    public var wrappedValue: T {
        get { InjectedValues[keyPath] }
        set { InjectedValues[keyPath] = newValue }
    }
    
    public init(_ keyPath: WritableKeyPath<InjectedValues, T>) {
        self.keyPath = keyPath
    }
}
