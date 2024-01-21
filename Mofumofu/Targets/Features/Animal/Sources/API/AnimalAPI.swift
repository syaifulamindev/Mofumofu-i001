//
//  AnimalAPI.swift
//  Mofumofu
//
//  Created by saminos on 21/01/24.
//  Copyright © 2024 amin.id. All rights reserved.
//

import Foundation
import MofumofuKit
import Moya
enum AnimalAPI {
    case animalList(name: String)
    case subtypeImage(subtypeName: String)
}

extension AnimalAPI: TargetType {
    var baseURL: URL {
        switch self {
        case .animalList:
            return URL(string: "https://api.api-ninjas.com")!
        case .subtypeImage:
            return URL(string: "https://api.pexels.com")!
        }
    }
    
    var path: String {
        switch self {
        case .animalList:
            return "v1/animals"
        case .subtypeImage:
            return "v1/search"
        }
    }
    
    var method: Moya.Method {
        .get
    }
    
    var task: Moya.Task {
        switch self {
        case .animalList(let name):
            return Moya.Task.requestParameters(parameters: ["name": name], encoding: URLEncoding.queryString)
        case .subtypeImage(let subtypeName):
            return Moya.Task.requestParameters(parameters: ["query": subtypeName], encoding: URLEncoding.queryString)
        }
    }
    
    var headers: [String : String]? {
        switch self {
        case .animalList:
            return ["X-Api-Key": Config.animalApiKey]
        case .subtypeImage:
            return ["Authorization": Config.imageApiKey]
        }
    }
    
    
}
