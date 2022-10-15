//
//  MainTabView.swift
//  GenesisTest
//
//  Created by mrohach on 15.10.2022.
//

import SwiftUI

struct MainTabView: View {
    
    // MARK: - Private properties
    @State private var selection = 0
    
    // MARK: - Init
    init() {
        UINavigationBar.appearance().backgroundColor = .clear
        let appearence = UINavigationBarAppearance()
        appearence.configureWithTransparentBackground()
        UINavigationBar.appearance().standardAppearance = appearence
        if #available(iOS 15.0, *) {
            UINavigationBar.appearance().compactScrollEdgeAppearance = appearence
        }
        UINavigationBar.appearance().compactAppearance = appearence
        UINavigationBar.appearance().scrollEdgeAppearance = appearence
    }
    
    var body: some View {
        NavigationView {
            BackgroundContainer {
                VStack(spacing: 0) {
                    TabView(selection: $selection) {
                        HomeView()
                            .tag(0)
                        CryptoListView()
                            .tag(1)
                    }
                    .tabViewStyle(.page(indexDisplayMode: .never))
                    HStack {
                        TabItem(selection: selection, index: 0, imageName: "home") {
                            withAnimation {
                                selection = 0
                            }
                        }
                        TabItem(selection: selection, index: 1, imageName: "list") {
                            withAnimation {
                                selection = 1
                            }
                        }
                    }
                    .background(Colors.foreground
                        .edgesIgnoringSafeArea([.bottom]))
                }
            }
        }
    }
}
