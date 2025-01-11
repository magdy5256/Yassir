//
//  CharacterDetailsView.swift
//  Yassir ios
//
//  Created by Magdy Khaled on 11/01/2025.
//


import SwiftUI

struct CharacterDetailsView: View {
    let character: Characters
    
    init(characters: Characters) {
        self.character = characters
    }
    
    var body: some View {
        ZStack {
            CharacterDetailInnerView(character: character)
        }.ignoresSafeArea()
    }
}
