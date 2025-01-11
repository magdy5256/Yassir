//
//  CharacterImage.swift
//  Yassir ios
//
//  Created by Magdy Khaled on 10/01/2025.
//


import SwiftUI

struct CharactersCell: View {
    
    let character: Characters
    
    @ObservedObject var imageLoader = ImageLoader()
    
    var body: some View {
        HStack (alignment: .top){
            if self.imageLoader.image != nil {
                Image(uiImage: self.imageLoader.image!)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .cornerRadius(8)
                    .frame(height: 70)
                
                VStack(alignment: .leading) {
                    Text(character.name ?? "")
                        .multilineTextAlignment(.center)
                    Text(character.species ?? "")
                        .multilineTextAlignment(.center)
                }
                Spacer()
            }
        }
        .frame(height: 90)
        .padding(8)
        .onAppear {
            self.imageLoader.loadImage(with: self.character.image ?? "")
        }
    }
}
