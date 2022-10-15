//
//  ImageLoader.swift
//  GenesisTest
//
//  Created by mrohach on 14.10.2022.
//

import UIKit
import Combine

class ImageLoader: ObservableObject {
    
    // MARK: - Public properties
    var didChange = PassthroughSubject<Data, Never>()
    var urlString = ""
    var data = Data() {
        didSet {
            didChange.send(data)
        }
    }

    // MARK: - Init
    init(urlString: String) {
        self.urlString = urlString
    }
    
    // MARK: - Public methods
    func loadImage() {
        guard let url = URL(string: urlString) else { return }
        let task = URLSession.shared.dataTask(with: url) { data, response, error in
            guard let data = data else { return }
            DispatchQueue.main.async {
                self.data = data
            }
        }
        task.resume()
    }
}
