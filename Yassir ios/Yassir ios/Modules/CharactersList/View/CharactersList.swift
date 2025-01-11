//
//  CharactersList.swift
//  Yassir ios
//
//  Created by Magdy Khaled on 10/01/2025.
//

import SwiftUI

struct CharactersList: View {
    @ObservedObject private var charactersViewModel = CharactersViewModel(characterService: CharacterService())
    
    var body: some View {
        NavigationView {
            VStack(alignment: .leading) {
                Text("Characters")
                    .padding()
                    .font(.system(size: 30, weight: .bold))
                
                HStack {
                    Text("Alive")
                        .multilineTextAlignment(.center)
                        .font(.system(size: 16, weight: .regular))
                        .padding(12)
                        .foregroundColor(Color.black)
                        .cornerRadius(20)
                        .overlay(
                            RoundedRectangle(cornerRadius: 20)
                                .stroke(.gray, lineWidth: 1)
                        )
                    Text("Dead")
                        .multilineTextAlignment(.center)
                        .font(.system(size: 16, weight: .regular))
                        .padding(12)
                        .foregroundColor(Color.black)
                        .cornerRadius(20)
                        .overlay(
                            RoundedRectangle(cornerRadius: 20)
                                .stroke(.gray, lineWidth: 1)
                        )
                    Text("Unknown")
                        .multilineTextAlignment(.center)
                        .font(.system(size: 16, weight: .regular))
                        .padding(12)
                        .foregroundColor(Color.black)
                        .cornerRadius(20)
                        .overlay(
                            RoundedRectangle(cornerRadius: 20)
                                .stroke(.gray, lineWidth: 1)
                        )
                }
                .padding(8)
                List {
                    Group {
                        if charactersViewModel.characters != nil {
                            CharacterView(characters: self.charactersViewModel.characters ?? [])
                            
                        } else {
                            LoaderView(isLoading: self.charactersViewModel.isLoading, error: self.charactersViewModel.error) {
                                self.charactersViewModel.fetchCharacters()
                            }
                        }
                        
                    }
                    
                }
                .listRowInsets( EdgeInsets(top: 16, leading: 0, bottom: 16, trailing: 0))
                .listStyle(.plain)
                .onAppear {
                    self.charactersViewModel.fetchCharacters()
                }
            }
            
        }
    }
}

