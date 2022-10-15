//
//  ImageView.swift
//  GenesisTest
//
//  Created by mrohach on 14.10.2022.
//

import SwiftUI

struct ImageView: View {
    
    // MARK: - Private properties
    @ObservedObject private var imageLoader:ImageLoader
    @State private var image:UIImage = UIImage()

    // MARK: - Init
    init(with loader: ImageLoader) {
        imageLoader = loader
    }
    
    var body: some View {
        Image(uiImage: image)
            .resizable()
            .aspectRatio(contentMode: .fit)
            .onAppear {
                imageLoader.loadImage()
            }
            .onReceive(imageLoader.didChange) { data in
                self.image = UIImage(data: data) ?? UIImage()
            }
    }
}
