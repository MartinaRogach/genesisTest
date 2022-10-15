//
//  AvatarLoader.swift
//  GenesisTest
//
//  Created by mrohach on 15.10.2022.
//

import UIKit

class AvatarLoader: ImageLoader {
    
    // MARK: - Public methods
    override func loadImage() {
        if let imageData = ImageDowloadManager.getSavedImage(named: "avatarImage.jpeg") {
            DispatchQueue.main.async {
                self.data = imageData
            }
            return
        }
        guard let url = URL(string: urlString) else { return }
        let task = URLSession.shared.dataTask(with: url) { data, response, error in
            guard let data = data else {
                DispatchQueue.main.async {
                    self.data = UIImage(named: "placeholder_avatar")?.jpegData(compressionQuality: 1) ?? Data()
                }
                return
            }
            DispatchQueue.main.async {
                self.data = data
                ImageDowloadManager.saveImage(data, for: "avatarImage.jpeg")
            }
        }
        task.resume()
    }
}
