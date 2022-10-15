//
//  TrendingView.swift
//  GenesisTest
//
//  Created by mrohach on 15.10.2022.
//

import SwiftUI

struct TrendingView: View {
    
    // MARK: - Public properties
    var item: TrendingItem
    
    var body: some View {
        VStack(spacing: 14) {
            HStack(spacing: 10) {
                Image(item.imageName)
                    .resizable()
                    .frame(width: 36, height: 36)
                VStack(spacing: 4) {
                    Text(item.title)
                        .font(.system(size: 16, weight: .medium))
                        .foregroundColor(Colors.primary)
                    Text(item.currencyCode)
                        .font(.system(size: 12, weight: .regular))
                        .foregroundColor(Colors.secondary)
                }
                Spacer()
            }
            Image(item.graphImageName)
                .resizable()
                .scaledToFit()
                .frame(maxWidth: .infinity)
            HStack {
                Text(item.price)
                    .font(.system(size: 14, weight: .medium))
                    .foregroundColor(Colors.primary)
                Spacer()
                HStack(spacing: 0) {
                    Image(item.isGrowing ? "up" : "down")
                    Text(item.income)
                        .font(.system(size: 10, weight: .medium))
                }
                .foregroundColor(item.isGrowing ? .green : .red)
            }
        }
        .padding(16)
        .background(Colors.foreground)
        .cornerRadius(18)
    }
}
