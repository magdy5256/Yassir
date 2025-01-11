//
//  CharacterDetailInnerView.swift
//  Yassir ios
//
//  Created by Magdy Khaled on 11/01/2025.
//

import SwiftUI

struct CharacterDetailInnerView: View {
    @Environment(\.dismiss) private var dismiss
    let  character:  Characters
    
    private let imageLoader = ImageLoader()
    
    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 4) {
                ZStack(alignment: .topLeading) {
                    CharacterDetailImage(imageLoader: imageLoader, imageURL: self.character.image ?? "")
                        .cornerRadius(70)
                        .overlay(
                            RoundedRectangle(cornerRadius: 70)
                                .stroke(.blue, lineWidth: 0)
                        )
                    
                    Button(action: { dismiss() }) {
                        Text("Back")
                            .font(.system(size: 16, weight: .semibold))
                            .padding()
                            .foregroundColor(.black)
                            .background(Circle().fill(.white))
                            .cornerRadius(20)
                    }
                    .padding(.top, 40)
                }
                
                HStack(alignment: .top) {
                    VStack(alignment: .leading, spacing: 3) {
                        Text(character.name ?? "")
                            .padding(.horizontal, 12)
                            .foregroundColor(Color(hex: "170341"))
                            .font(.system(size: 28, weight: .bold))
                        VStack(alignment: .leading) {
                            HStack(spacing: 3) {
                                Text(character.species ?? "")
                                    .foregroundColor(Color(hex: "504974"))
                                    .font(.system(size: 14, weight: .semibold))
                                Text("")
                                    .multilineTextAlignment(.center)
                                    .padding(2)
                                    .foregroundColor(.white)
                                    .background(Circle().fill(.gray))
                                Text(character.gender ?? "")
                                    .foregroundColor(Color(hex: "827C9C"))
                                    .font(.system(size: 14, weight: .semibold))
                            }
                        }
                        .padding(.horizontal, 12)
                        .padding(.bottom, 20)
                        .font(.system(size: 12, weight: .bold))
                        
                        HStack(alignment:.top, spacing: 3) {
                            Text("Location:")
                                .foregroundColor(Color(hex: "170341"))
                                .font(.system(size: 14, weight: .semibold))
                            Text(character.location?.name ?? "")
                                .foregroundColor(Color(hex: "504974"))
                                .font(.system(size: 14, weight: .semibold))
                        }
                        .padding(.horizontal, 12)
                    }
                    
                    Spacer()
                    
                    Text(character.status ?? "")
                        .multilineTextAlignment(.center)
                        .font(.system(size: 16, weight: .semibold))
                        .padding(.horizontal, 15)
                        .foregroundColor(Color(hex: "170341"))
                        .background(Rectangle().fill(Color(hex: "61CBF4")))
                        .cornerRadius(20)
                        .overlay(
                            RoundedRectangle(cornerRadius: 20)
                                .stroke(.clear, lineWidth: 2)
                        )
                        .padding()
                    
                }
            }
            
        }
    }
}
