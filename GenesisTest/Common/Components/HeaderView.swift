//
//  HeaderView.swift
//  GenesisTest
//
//  Created by mrohach on 14.10.2022.
//

import SwiftUI

struct HeaderView: View {
    
    // MARK: - Public properties
    var text: String
    var isWaiting: Bool? = nil
    var buttonHidden: Bool = true
    var showPressed: (() -> Void)? = nil
    
    var body: some View {
        HStack(alignment: .center) {
            Text(text)
                .foregroundColor(Colors.primary)
                .font(.system(size: 20, weight: .medium))
            if isWaiting ?? false {
                ProgressView()
                    .padding(.leading, 10)
            }
            Spacer()
            if !buttonHidden {
                GradientButton(text: "Show all") {
                    showPressed?()
                }
            }
        }
        .padding(.top, 44)
        .padding(.bottom, 18)
    }
}
