//
//  AnimalResponse.swift
//  MofumofuKit
//
//  Created by saminos on 21/01/24.
//  Copyright © 2024 amin.id. All rights reserved.
//

import Foundation

// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let welcome = try? JSONDecoder().decode(Welcome.self, from: jsonData)

// MARK: - AnimalElement
struct AnimalElement: Codable {
    let name: String
    let taxonomy: Taxonomy
    let locations: [Location]
    let characteristics: Characteristics
    var loved: Bool = false

    enum CodingKeys: String, CodingKey {
        case name
        case taxonomy
        case locations
        case characteristics
    }
}

// MARK: - Characteristics
struct Characteristics: Codable {
    let prey: String?
    let nameOfYoung: String?
    let groupBehavior: String?
    let estimatedPopulationSize: String?
    let biggestThreat: String?
    let mostDistinctiveFeature: String?
    let otherNameS: String?
    let gestationPeriod: String?
    let habitat: String?
    let predators: String?
    let diet: Diet?
    let averageLitterSize: String?
    let lifestyle: String?
    let commonName: String?
    let numberOfSpecies: String?
    let location: String?
    let slogan: String?
    let group: String?
    let color: String?
    let skinType: String?
    let topSpeed: String?
    let lifespan: String?
    let weight: String?
    let height: String?
    let ageOfSexualMaturity: String?
    let ageOfWeaning: String?
    let mainPrey: String?
    let distinctiveFeature: String?
    let favoriteFood: String?
    let type: String?
    let length: String?
    let litterSize: String?
    let origin: String?
    let waterType: WaterType?
    let optimumPhLevel: String?
    let averageClutchSize: String?
    let temperament: String?
    let training: String?
    let incubationPeriod: String?
    let ageOfIndependence: String?
    let averageSpawnSize: String?
    let nestingLocation: String?
    let wingspan: String?
    let ageOfFledgling: String?

    enum CodingKeys: String, CodingKey {
        case prey
        case nameOfYoung
        case groupBehavior
        case estimatedPopulationSize
        case biggestThreat
        case mostDistinctiveFeature
        case otherNameS
        case gestationPeriod
        case habitat
        case predators
        case diet
        case averageLitterSize
        case lifestyle
        case commonName
        case numberOfSpecies
        case location
        case slogan
        case group
        case color
        case skinType
        case topSpeed
        case lifespan
        case weight
        case height
        case ageOfSexualMaturity
        case ageOfWeaning
        case mainPrey
        case distinctiveFeature
        case favoriteFood
        case type
        case length
        case litterSize
        case origin
        case waterType
        case optimumPhLevel
        case averageClutchSize
        case temperament
        case training
        case incubationPeriod
        case ageOfIndependence
        case averageSpawnSize
        case nestingLocation
        case wingspan
        case ageOfFledgling
    }
}

enum Diet: String, Codable {
    case carnivore = "Carnivore"
    case herbivore = "Herbivore"
    case omnivore = "Omnivore"
}

enum WaterType: String, Codable {
    case brackish = "Brackish"
    case salt = "Salt"
}

enum Location: String, Codable {
    case africa = "Africa"
    case antarctica = "Antarctica"
    case asia = "Asia"
    case centralAmerica = "Central-America"
    case eurasia = "Eurasia"
    case europe = "Europe"
    case leastConcern = "Least Concern"
    case northAmerica = "North-America"
    case ocean = "Ocean"
    case oceania = "Oceania"
    case southAmerica = "South-America"
}

// MARK: - Taxonomy
struct Taxonomy: Codable {
    let kingdom: Kingdom?
    let phylum: Phylum?
    let taxonomyClass: Class?
    let order: String?
    let family: String?
    let genus: String?
    let scientificName: String?

    enum CodingKeys: String, CodingKey {
        case kingdom
        case phylum
        case taxonomyClass
        case order
        case family
        case genus
        case scientificName
    }
}

enum Kingdom: String, Codable {
    case animalia = "Animalia"
}

enum Phylum: String, Codable {
    case arthropoda = "Arthropoda"
    case chordata = "Chordata"
    case cnidaria = "Cnidaria"
    case hemichordata = "Hemichordata"
}

enum Class: String, Codable {
    case actinopterygii = "Actinopterygii"
    case arachnida = "Arachnida"
    case aves = "Aves"
    case chondrichthyes = "Chondrichthyes"
    case mammalia = "Mammalia"
    case reptilia = "Reptilia"
    case scyphozoa = "Scyphozoa"
}

typealias Animals = [AnimalElement]
