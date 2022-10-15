//
//  AboutCurrencyView.swift
//  GenesisTest
//
//  Created by mrohach on 15.10.2022.
//

import SwiftUI

struct AboutCurrencyView: View {
    
    // MARK: - Private properties
    @State private var isShown = false
    
    var body: some View {
        if isShown {
            Text("Bitcoin is a decentralized digital currency created in January 2009. It follows the ideas set out in a whitepaper by the mysterious and pseudonymous Satoshi Nakamoto. The identity of the person or persons who created the technology is still a mystery. Bitcoin offers the Bitcoin is a decentralized digital currency created in January 2009. It follows the ideas set out in a whitepaper by the mysterious and pseudonymous Satoshi Nakamoto. The identity of the person or persons who created the technology is still a mystery. Bitcoin offers the ")
                .font(.system(size: 14, weight: .regular))
                .foregroundColor(Colors.primary)
        } else {
            VStack(spacing: 0) {
                LinearGradient(colors: [.white.opacity(1), .white.opacity(0)], startPoint: .top, endPoint: .bottom)
                    .mask(
                        Text("Bitcoin is a decentralized digital currency created in January 2009. It follows the ideas set out in a whitepaper by the mysterious and pseudonymous Satoshi Nakamoto. The identity of the person or persons who created the technology is still a mystery. Bitcoin offers the ")
                            .font(.system(size: 14, weight: .regular))
                    )
                    .frame(height: 140)
                GradientButton(text: "Show more +") {
                    withAnimation {
                        isShown = true
                    }
                }
                .frame(height: 25)
            }
        }
    }
}

