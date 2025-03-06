//
//  Cocktail.swift
//  NewUISample
//
//  Created by 515148076 on 05/01/25.
//

import Foundation

struct Cocktail: Identifiable, Codable {
    
    var id: String
    var name: String
    var type: String
    var shortDescription: String
    var longDescription: String
    var preparationMinutes: Int
    var imageName: String
    var ingredients: [String]?
    
    enum CodingKeys: String, CodingKey {
            case id
            case name
            case type
            case shortDescription
            case longDescription
            case preparationMinutes
            case imageName
            case ingredients
        }

    var isAlcoholicBool: Bool {
        return type.lowercased().contains("non-alcoholic")
    }
}

