//
//  News.swift
//  GenesisTest
//
//  Created by mrohach on 15.10.2022.
//

import Foundation

struct News: Codable, Hashable {
    var id: String
    var sourceId: String
    var sourceName: String
    var providerName: String
    var title: String
    var publishedDate: String
}
