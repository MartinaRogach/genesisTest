//
//  HomeView.swift
//  GenesisTest
//
//  Created by mrohach on 14.10.2022.
//

import SwiftUI

struct HomeView: View {
    
    // MARK: - Private properties
    @StateObject private var viewModel = HomeViewModel()
    
    var body: some View {
        BackgroundContainer {
            ScrollView {
                VStack(spacing: 0) {
                    VStack(spacing: 32) {
                        HStack {
                            VStack(alignment: .leading, spacing: 10) {
                                Text("Welcome back,")
                                    .font(.system(size: 16, weight: .medium))
                                    .foregroundColor(Colors.secondary)
                                Text("Matthew 👋🏻")
                                    .font(.system(size: 24, weight: .medium))
                                    .foregroundColor(Colors.primary)
                            }
                            Spacer()
                            ImageView(with: AvatarLoader(urlString: "https://thispersondoesnotexist.com/image"))
                                .frame(width: 60, height: 60)
                                .cornerRadius(30)
                        }
                        .padding(.top, 10)
                        ZStack {
                            Circle()
                                .fill(Colors.foreground)
                                .frame(width: 180, height: 180)
                            LinearGradient.standard
                              .mask(
                                Circle()
                                  .frame(width: 90, height: 90)
                                  .blur(radius: 30)
                                )
                              .clipShape(Circle())
                            Text("$246.00")
                                .font(.system(size: 20, weight: .medium))
                                .foregroundColor(Colors.primary)
                        }
                        HStack(spacing: 10) {
                            OptionButton(title: "Deposit") {
                            }
                            OptionButton(title: "Withdraw") {
                            }
                        }
                    }
                    HeaderView(text: "🔥 Trending")
                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack(spacing: 16) {
                            ForEach(trendingItems, id: \.self) { item in
                                TrendingView(item: item)
                            }
                        }
                    }
                    HeaderView(text: "🪙 News", isWaiting: viewModel.shownNews.isEmpty,
                               buttonHidden: viewModel.showAllHidden) {
                        withAnimation {
                            viewModel.showAllPressed()
                        }
                    }
                    VStack(spacing: 16) {
                        ForEach(viewModel.shownNews, id: \.self) { item in
                            NewsView(item: item)
                        }
                    }
                }
                .padding(.horizontal, 20)
                .padding(.bottom, 15)
            }
        }
        .onReceive(viewModel.timer) { _ in
            viewModel.getNews()
        }
        .onDisappear {
            viewModel.timer.upstream.connect().cancel()
        }
    }
}
