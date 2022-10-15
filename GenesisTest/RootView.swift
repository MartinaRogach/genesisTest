//
//  ContentView.swift
//  GenesisTest
//
//  Created by mrohach on 14.10.2022.
//

import SwiftUI

struct RootView: View {
    // MARK: - Private properties
    @AppStorage("needToShowOndoarding") private var needToShowOndoarding: Bool = true
    
    var body: some View {
        MainTabView()
        .fullScreenCover(isPresented: $needToShowOndoarding) {
            OnboardingView(needToShowOndoarding: $needToShowOndoarding)
        }
    }
}
