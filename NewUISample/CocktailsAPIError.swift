//
//  CocktailsAPIError.swift
//  NewUISample
//
//  Created by 515148076 on 05/01/25.
//

import Foundation

enum CocktailsAPIError: Error, LocalizedError {
    case unavailable
    
    var errorDescription: String? {
        return "Unable to retrieve cocktails, API unavailable"
    }
}
