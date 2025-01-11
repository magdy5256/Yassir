//
//  CharacterEndpoint.swift
//  Yassir ios
//
//  Created by Magdy Khaled on 09/01/2025.
//

import Foundation

enum  CharacterEndpoint: APIEndpoint {
    case getCharacters
    var baseURL: URL {
        return URL(string: "https://rickandmortyapi.com/api")!
    }
    
    var path: String {
        switch self {
        case .getCharacters:
            return "/character"
        }
    }
    
    var method: HTTPMethod {
        switch self {
        case .getCharacters:
            return .get
        }
    }
    
    var headers: [String: String]? {
           switch self {
           case .getCharacters:
               return ["page": "19"]
           }
       }
    
   
}
