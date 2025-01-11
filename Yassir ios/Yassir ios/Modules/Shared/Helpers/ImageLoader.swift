//
//  ImageLoader.swift
//  Yassir ios
//
//  Created by Magdy Khaled on 10/01/2025.
//
//
import Foundation
import SwiftUI
import UIKit

private let _imageCache = NSCache<AnyObject, AnyObject>()

class ImageLoader: ObservableObject {
    
    @Published var image: UIImage?
    @Published var isLoading = false
    
    var imageCache = _imageCache

    func loadImage(with urlString: String) {

        if let imageFromCache = imageCache.object(forKey: urlString as AnyObject) as? UIImage {
            self.image = imageFromCache
            return
        }
        
        DispatchQueue.global(qos: .background).async { [weak self] in
            guard let self = self else { return }
            do {
                if let url = URL(string: urlString) {
                    let data = try Data(contentsOf: url)
                    guard let image = UIImage(data: data) else {
                        return
                    }
                    
                    self.imageCache.setObject(image, forKey: urlString as AnyObject)
                    DispatchQueue.main.async { [weak self] in
                        self?.image = image
                    }
                }
            } catch {
                print(error.localizedDescription)
            }
        }
    }
}
