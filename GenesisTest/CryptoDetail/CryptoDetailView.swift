//
//  CryptoDetailView.swift
//  GenesisTest
//
//  Created by mrohach on 15.10.2022.
//

import SwiftUI

struct CryptoDetailView: View {
    
    // MARK: - Public properties
    var item: Top50CryptocurrencyDetail?
    
    var body: some View {
        BackgroundContainer {
            if let item = item {
                ScrollView {
                    VStack(spacing: 0) {
                        ZStack(alignment: .bottom) {
                            Rectangle()
                                .fill(Colors.foreground)
                                .frame(maxWidth: .infinity)
                                .frame(height: 285)
                                .cornerRadius(radius: 30, corners: [.bottomLeft, .bottomRight])
                            VStack(spacing: 16) {
                                Text(item.price)
                                    .font(.system(size: 32, weight: .medium))
                                    .foregroundColor(Colors.primary)
                                Text("\(item.volumeMarketCap)%")
                                    .font(.system(size: 16, weight: .regular))
                                    .foregroundColor(.red)
                                HStack {
                                    VolumeItem(text: "24h Low", description: item.highLow24Hr.low)
                                    VolumeItem(text: "24h High", description: item.highLow24Hr.high)
                                    VolumeItem(text: "Volume (\(item.symbol))", description: item.volumeMarketCap)
                                }
                                .padding(.bottom, 38)
                                .padding(.top, 10)
                            }
                        }
                        VStack(spacing: 12) {
                            VStack(spacing: 20) {
                                VStack(spacing: 32) {
                                    CryptoDetailTextField(currencyCode: item.symbol)
                                        .padding(.top, 42)
                                    CryptoDetailTextField(currencyCode: "USD")
                                }
                                HStack {
                                    OptionButton(title: "Buy \(item.symbol)",
                                                 description: "1 067 620 USD ≈ 5 BTC") {
                                    }
                                    
                                    OptionButton(title: "Sell \(item.symbol)",
                                                 description: "5 BTC ≈ 86 672.7 USD") {
                                    }
                                }
                            }
                            HeaderView(text: "💸 About \(item.symbol)")
                            AboutCurrencyView()
                            CryptoInfoView(title: "Rank", description: item.rank)
                            CryptoInfoView(title: "Launch Date", description: "January 3, 2009")
                        }
                        .padding(.horizontal, 20)
                    }
                }
                .edgesIgnoringSafeArea(.top)
            }
            
        }
        .defaultNavBar(text: "\(item?.symbol ?? "")/USD")
    }
}
