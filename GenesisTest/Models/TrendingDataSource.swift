//
//  TrendingDataSource.swift
//  GenesisTest
//
//  Created by mrohach on 15.10.2022.
//

import Foundation

struct TrendingItem: Hashable {
    var title: String
    var currencyCode: String
    var imageName: String
    var price: String
    var income: String
    var isGrowing: Bool
    var graphImageName: String
}

let trendingItems = [
    TrendingItem(title: "Binance Coin",
                 currencyCode: "BNB",
                 imageName: "trending_1",
                 price: "$352,20",
                 income: "0.27%",
                 isGrowing: false,
                 graphImageName: "Vector_1"),
    TrendingItem(title: "Binance Coin",
                 currencyCode: "BNB",
                 imageName: "trending_2",
                 price: "$352,20",
                 income: "0.27%",
                 isGrowing: false,
                 graphImageName: "Vector_2"),
    TrendingItem(title: "Binance Coin",
                 currencyCode: "BNB",
                 imageName: "trending_3",
                 price: "$352,20",
                 income: "0.27%",
                 isGrowing: false,
                 graphImageName: "Vector_3")]
