//
//  CryptoInfoView.swift
//  GenesisTest
//
//  Created by mrohach on 15.10.2022.
//

import SwiftUI

struct CryptoInfoView: View {
    
    // MARK: - Public properties
    var title: String
    var description: String
    
    var body: some View {
        HStack {
            Text(title)
                .font(.system(size: 16, weight: .medium))
                .foregroundColor(Colors.primary)
            Spacer()
            Text(description)
                .font(.system(size: 16, weight: .regular))
                .foregroundColor(Colors.secondary)
        }
        .padding(14)
        .background(Colors.foreground)
        .cornerRadius(12)
    }
}
