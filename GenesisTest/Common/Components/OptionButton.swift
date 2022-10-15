//
//  OptionButton.swift
//  GenesisTest
//
//  Created by mrohach on 14.10.2022.
//

import SwiftUI

struct OptionButton: View {
    
    // MARK: - Public properties
    var title: String
    var description: String?
    var buttonPressed: () -> Void
    
    var body: some View {
        Button {
            buttonPressed()
        } label: {
            VStack(spacing: 2) {
                Text(title)
                    .font(.system(size: 16, weight: .medium))
                    .foregroundColor(Colors.primary)
                if let description = description {
                    Text(description)
                        .font(.system(size: 12, weight: .regular))
                        .foregroundColor(Colors.secondary)
                }
            }
            .padding(10)
            .frame(maxWidth: .infinity)
            .frame(minHeight: 48)
            .background(Colors.foreground)
            .cornerRadius(12)
            .overlay(RoundedRectangle(cornerRadius: 12)
                .stroke(LinearGradient.standard, lineWidth: 1))
        }

    }
}
