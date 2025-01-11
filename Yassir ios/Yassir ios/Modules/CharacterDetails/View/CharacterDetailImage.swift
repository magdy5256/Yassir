//
//  CharacterDetailImage.swift
//  Yassir ios
//
//  Created by Magdy Khaled on 11/01/2025.
//

import SwiftUI

struct CharacterDetailImage: View {
    
    @ObservedObject var imageLoader: ImageLoader
    let imageURL: String
    
    var body: some View {
        ZStack {
            if self.imageLoader.image != nil {
                Image(uiImage: self.imageLoader.image!)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .cornerRadius(8)
            }
        }
        .onAppear {
            self.imageLoader.loadImage(with: self.imageURL)
        }
    }
}
