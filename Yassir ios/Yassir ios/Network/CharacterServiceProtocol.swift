//
//  CharacterServiceProtocol.swift
//  Yassir ios
//
//  Created by Magdy Khaled on 09/01/2025.
//

import Foundation
import Combine
protocol CharacterServiceProtocol {
    func getCharacters() -> AnyPublisher<CharactersResonse, Error>
}

class CharacterService: CharacterServiceProtocol {
    let apiClient = URLSessionAPIClient<CharacterEndpoint>()
    
    func getCharacters() -> AnyPublisher<CharactersResonse, Error> {
        return apiClient.request(.getCharacters)
    }
}
