//
//  BackgroundContainer.swift
//  GenesisTest
//
//  Created by mrohach on 14.10.2022.
//

import SwiftUI

struct BackgroundContainer<Content: View>: View {

    // MARK: - Public properties
    @ViewBuilder var content: Content
    
    var body: some View {
        ZStack {
            Colors.background
                .edgesIgnoringSafeArea([.top, .bottom])
            content
        }
    }
}
