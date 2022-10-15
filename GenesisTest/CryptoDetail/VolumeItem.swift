//
//  VolumeItem.swift
//  GenesisTest
//
//  Created by mrohach on 15.10.2022.
//

import SwiftUI

struct VolumeItem: View {
    
    // MARK: - Public properties
    var text: String
    var description: String
    
    var body: some View {
        VStack {
            Text(text)
                .font(.system(size: 12, weight: .medium))
                .foregroundColor(Colors.secondary)
            Text(description)
                .font(.system(size: 16, weight: .medium))
                .foregroundColor(Colors.primary)
        }
        .frame(maxWidth: .infinity)
    }
}

