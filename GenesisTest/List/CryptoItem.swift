//
//  CryptoItem.swift
//  GenesisTest
//
//  Created by mrohach on 15.10.2022.
//

import SwiftUI

struct CryptoItem: View {
    
    // MARK: - Public properties
    var item: Top50CryptocurrencyDetail
    var buttonPressed: () -> Void
    
    var body: some View {
        Button {
            buttonPressed()
        } label: {
            HStack(spacing: 10) {
                ImageView(with: ImageLoader(urlString: item.image))
                    .frame(width: 46, height: 46)
                VStack(alignment: .leading, spacing: 8) {
                    Text(item.coin)
                        .font(.system(size: 16, weight: .medium))
                        .foregroundColor(Colors.primary)
                    Text(item.symbol)
                        .font(.system(size: 16, weight: .regular))
                        .foregroundColor(Colors.secondary)
                }
                Spacer()
                VStack(alignment: .trailing, spacing: 8) {
                    Text(item.price)
                        .font(.system(size: 15, weight: .medium))
                        .foregroundColor(Colors.secondary)
                    Text("+\(item.volumeMarketCap)%")
                        .font(.system(size: 16, weight: .regular))
                        .foregroundColor(.green)
                }
            }
        }
    }
}
