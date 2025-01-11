//
//  CharacterView.swift
//  Yassir ios
//
//  Created by Magdy Khaled on 10/01/2025.
//

import SwiftUI

struct CharacterView: View {
    let characters: [Characters]
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            VStack(alignment: .leading) {
                
                ForEach(self.characters) { character in
                    NavigationLink(destination: CharacterDetailsView(characters: character).navigationBarBackButtonHidden(true)) {
                        CharactersCell(character: character)
                            .frame(width: UIScreen.main.bounds.width - 50)
                            .cornerRadius(20)
                            .overlay(
                                RoundedRectangle(cornerRadius: 25)
                                    .stroke(.gray, lineWidth: 0.5)
                            )
                    }
                }
                
                .buttonStyle(PlainButtonStyle())
                .padding(.horizontal, 16)
            }
        }
    }
}


