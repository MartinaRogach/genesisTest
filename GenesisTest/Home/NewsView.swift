//
//  NewsView.swift
//  GenesisTest
//
//  Created by mrohach on 15.10.2022.
//

import SwiftUI

struct NewsView: View {
    
    // MARK: - Public properties
    var item: News
    
    var body: some View {
        HStack(spacing: 23) {
            Image("news")
                .resizable()
                .frame(width: 80, height: 80)
            VStack(alignment: .leading, spacing: 10) {
                HStack(spacing: 10) {
                    Text(item.sourceName)
                        .font(.system(size: 12, weight: .medium))
                        .foregroundColor(Colors.secondary)
                    Text("●")
                        .font(.system(size: 6, weight: .medium))
                        .foregroundColor(Colors.secondary)
                    Text(item.publishedDate.timeAgoDisplay())
                        .font(.system(size: 12, weight: .medium))
                        .foregroundColor(Colors.secondary)
                    Spacer()
                }
                Text(item.title)
                    .font(.system(size: 14, weight: .medium))
                    .foregroundColor(Colors.primary)
            }
            Spacer()
        }
    }
}
