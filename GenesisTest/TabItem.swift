//
//  TabItem.swift
//  GenesisTest
//
//  Created by mrohach on 15.10.2022.
//

import SwiftUI

struct TabItem: View {
    
    // MARK: - Public properties
    var selection: Int
    var index: Int
    var imageName: String
    var itemPressed: () -> Void
    
    var body: some View {
        Button {
            withAnimation {
                itemPressed()
            }
        } label: {
            if selection == index {
                LinearGradient.standard
                    .mask(Image(imageName)
                        .resizable()
                        .frame(width: 24, height: 24))
            } else {
                Image(imageName)
                    .resizable()
                    .frame(width: 24, height: 24)
                    .foregroundColor(Colors.secondary)
            }
        }
        .frame(maxWidth: .infinity)
        .frame(height: 53)
    }
}

