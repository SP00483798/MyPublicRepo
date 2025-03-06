//
//  CocktailsAPI.swift
//  NewUISample
//
//  Created by 515148076 on 05/01/25.
//

import Foundation
import Combine

protocol CocktailsAPI: AnyObject {
    
    var cocktailsPublisher: AnyPublisher<Data, CocktailsAPIError> { get }
    func fetchCocktails(_ handler: @escaping (Result<Data, CocktailsAPIError>) -> Void)
}
