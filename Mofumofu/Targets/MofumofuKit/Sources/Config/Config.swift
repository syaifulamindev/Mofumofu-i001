//
//  ConfigurationsPlist.swift
//  AnimalFeatureExample
//
//  Created by saminos on 21/01/24.
//  Copyright © 2024 amin.id. All rights reserved.
//

import Foundation

public struct Config {
    private static var plist: [String: String] = {
        guard let path = Bundle.module.path(forResource: "Configurations", ofType: "plist") else {
            NSLog("Config error: no Configurations.plist   aa file")
            return [:]
        }
        let url = URL(fileURLWithPath: path)
        do {
            let data: Data = try Data(contentsOf: url)
            let plist = try PropertyListSerialization.propertyList(from: data, options: .mutableContainers, format: nil) as? [String:String]
            return plist ?? [:]
        } catch let error {
            NSLog("Config error: \(error.localizedDescription)")
        }
        NSLog("Config error")
        return [:]
    }()
    
    public static var imageApiKey: String = {
        plist["IMAGE_API_KEY"] ?? ""
    }()
    
    public static var animalApiKey: String = {
        plist["ANIMAL_API_KEY"] ?? ""
    }()
}
