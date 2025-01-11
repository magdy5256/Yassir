//
//  CharactersViewModel.swift
//  Yassir ios
//
//  Created by Magdy Khaled on 10/01/2025.
//

import Foundation
import Combine


class CharactersViewModel: ObservableObject {
    private var cancellables = Set<AnyCancellable>()
    let characterService: CharacterServiceProtocol
    
    @Published var characters: [Characters]?
    
    @Published var isLoading: Bool = false
    @Published var error: NSError?
    init(characterService: CharacterServiceProtocol) {
        self.characterService = characterService
    }
    
    func fetchCharacters() {
        self.characters = nil
        self.isLoading = true
        characterService.getCharacters()
            .receive(on: RunLoop.main)
            .sink(receiveCompletion: { data in
            
        }, receiveValue: {[weak self] data in
            self?.characters = data.results
            self?.isLoading = false
        }).store(in: &cancellables)
    }
}
