//
//  ShowAllButton.swift
//  GenesisTest
//
//  Created by mrohach on 14.10.2022.
//

import SwiftUI

struct GradientButton: View {
    
    // MARK: - Public properties
    var text: String
    var buttonPressed: () -> Void
    
    var body: some View {
        Button {
            buttonPressed()
        } label: {
            LinearGradient.standard
                .mask(Text(text)
                    .font(.system(size: 16, weight: .medium)))
                .frame(maxWidth: 100, maxHeight: 25)
        }
    }
}
