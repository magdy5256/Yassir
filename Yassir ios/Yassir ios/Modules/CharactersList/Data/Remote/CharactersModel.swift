//
//  CharactersResonse.swift
//  Yassir ios
//
//  Created by Magdy Khaled on 09/01/2025.
//

import Foundation

struct CharactersResonse : Codable {
    
    let info : Info?
    let results : [Characters]?
    
    
    enum CodingKeys: String, CodingKey {
        case info
        case results = "results"
    }
}


struct Characters : Codable, Identifiable {
    
    let created : String?
    let episode : [String]?
    let gender : String?
    let id : Int?
    let image : String?
    let location : Location?
    let name : String?
    let origin : Location?
    let species : String?
    let status : String?
    let type : String?
    let url : String?
    
    
    enum CodingKeys: String, CodingKey {
        case created = "created"
        case episode = "episode"
        case gender = "gender"
        case id = "id"
        case image = "image"
        case location
        case name = "name"
        case origin = "origin"
        case species = "species"
        case status = "status"
        case type = "type"
        case url = "url"
    }
}


struct Location : Codable {
    
    let name : String?
    let url : String?
    
    
    enum CodingKeys: String, CodingKey {
        case name = "name"
        case url = "url"
    }
}

struct Info : Codable {
    
    let count : Int?
    let next : String?
    let pages : Int?
    let prev : String?
    
    
    enum CodingKeys: String, CodingKey {
        case count = "count"
        case next = "next"
        case pages = "pages"
        case prev = "prev"
    }
}
