//
//  Crypto.swift
//  GenesisTest
//
//  Created by mrohach on 15.10.2022.
//

import Foundation

struct CryptoList: Codable {
    let top50CryptocurrencyDetails: [Top50CryptocurrencyDetail]

    enum CodingKeys: String, CodingKey {
        case top50CryptocurrencyDetails = "Top 50 Cryptocurrency Details"
    }
}

// MARK: - Top50CryptocurrencyDetail
struct Top50CryptocurrencyDetail: Codable, Hashable {
    let circulatingSupply, symbol, rank: String
    let maxSupply: String?
    let image: String
    let volumeMarketCap, fullyDilutedMarketCap, coin, price: String
    let highLow24Hr: HighLow24Hr
    let totalSupply: String?
    let volume24Hr: String
    let link: String?
    let marketCap: String

    enum CodingKeys: String, CodingKey {
        case circulatingSupply = "Circulating Supply"
        case symbol = "Symbol"
        case rank = "Rank"
        case maxSupply = "Max Supply"
        case image = "Image"
        case volumeMarketCap = "Volume/Market Cap"
        case fullyDilutedMarketCap = "Fully Diluted Market Cap"
        case coin = "Coin"
        case price = "Price"
        case highLow24Hr = "High/Low 24hr"
        case totalSupply = "Total Supply"
        case volume24Hr = "Volume 24hr"
        case link = "Link"
        case marketCap = "Market Cap"
    }
}

// MARK: - HighLow24Hr
struct HighLow24Hr: Codable, Hashable {
    let high, low: String

    enum CodingKeys: String, CodingKey {
        case high = "High"
        case low = "Low"
    }
}
