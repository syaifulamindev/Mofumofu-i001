//
//  DataManager.swift
//  MofumofuKit
//
//  Created by saminos on 21/01/24.
//  Copyright © 2024 amin.id. All rights reserved.
//

import Moya
import Foundation

protocol LocalDataServiceable {
    
}

protocol Networkable {
    
}


enum NetworkDataServiceError: Error {
    case failure(error: Error)
}

class DataManager {
 
    private let local: LocalDataServiceable
    private let network: Networkable
    
    init(local: LocalDataServiceable, network: Networkable) {
        self.local = local
        self.network = network
    }
    
}

