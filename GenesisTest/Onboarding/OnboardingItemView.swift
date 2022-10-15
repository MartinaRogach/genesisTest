//
//  OnboardingItemView.swift
//  GenesisTest
//
//  Created by mrohach on 14.10.2022.
//

import SwiftUI

struct OnboardingItemView: View {
    
    // MARK: - Public properties
    var item: OnboardingItem
    var buttonPressed: () -> Void
    
    var body: some View {
        VStack(spacing: 72) {
            Spacer()
            Image(item.imageName)
                .resizable()
                .scaledToFit()
                .frame(height: 234)
            ZStack {
                VStack(spacing: 24) {
                    VStack(spacing: 16) {
                        Text(item.title)
                            .font(.system(size: 32, weight: .medium))
                            .foregroundColor(Colors.primary)
                        Text(item.description)
                            .multilineTextAlignment(.center)
                            .font(.system(size: 16, weight: .medium))
                            .foregroundColor(Colors.primary)
                    }
                    Button {
                        buttonPressed()
                    } label: {
                        Text("Continue")
                            .foregroundColor(.white)
                            .font(.system(size: 16, weight: .medium))
                            .frame(height: 56)
                            .frame(minWidth: 0, maxWidth: .infinity)
                            .background(LinearGradient.standard)
                            .cornerRadius(28)
                    }
                }
                .padding(.horizontal, 20)
                .padding(.vertical, 42)
                .background(
                    RoundedRectangle(cornerRadius: 30)
                        .fill(Colors.foreground))
            }
        }
        .padding(.horizontal, 20)
        .padding(.bottom, 40)
    }
}

