//
//  OnboardingView.swift
//  GenesisTest
//
//  Created by mrohach on 14.10.2022.
//

import SwiftUI

struct OnboardingView: View {
    // MARK: - Private properties
    @State private var selection = 0
    
    // MARK: - Public properties
    @Binding var needToShowOndoarding: Bool
    
    var body: some View {
        BackgroundContainer {
            VStack {
                TabView(selection: $selection) {
                    ForEach(onboardingItems.indices, id: \.self) { index in
                        OnboardingItemView(item: onboardingItems[index]) {
                            if index == (onboardingItems.count - 1) {
                                needToShowOndoarding = false
                            } else {
                                withAnimation {
                                    selection += 1
                                }
                            }
                        }
                    }
                }
                .tabViewStyle(.page(indexDisplayMode: .never))
            }
        }
    }
}
