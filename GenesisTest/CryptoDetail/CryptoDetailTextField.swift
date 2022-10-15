//
//  CryptoDetailTextField.swift
//  GenesisTest
//
//  Created by mrohach on 15.10.2022.
//

import SwiftUI

struct CryptoDetailTextField: View {
    
    // MARK: - Private properties
    @State private var text: String = ""
    
    // MARK: - Public properties
    var currencyCode: String
    
    var body: some View {
        VStack(alignment: .leading, spacing: 6) {
            HStack {
                TextField("", text: $text)
                    .placeholder(when: text.isEmpty) {
                        Text("0")
                            .font(.system(size: 20, weight: .medium))
                            .foregroundColor(Colors.secondary)
                    }
                    .font(.system(size: 20, weight: .medium))
                    .foregroundColor(Colors.primary)
                    .frame(maxWidth: .infinity)
                Text(currencyCode)
                    .font(.system(size: 16, weight: .medium))
                    .foregroundColor(Colors.primary)
            }
            Rectangle()
                .fill(LinearGradient.standard)
                .frame(height: 1)
                .frame(maxWidth: .infinity)
            Text("Available 0 \(currencyCode)")
                .font(.system(size: 12, weight: .medium))
                .foregroundColor(Colors.secondary)
        }
    }
}
