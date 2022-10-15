//
//  CryptoListView.swift
//  GenesisTest
//
//  Created by mrohach on 15.10.2022.
//

import SwiftUI

struct CryptoListView: View {
    
    // MARK: - Private properties
    @StateObject private var viewModel = CryptoListViewModel()
    @State private var shownItem: Top50CryptocurrencyDetail? = nil
    private var shownItemBinding: Binding<Bool> {
        return Binding(get: {
            shownItem != nil
        }, set: {
            shownItem = $0 == false ? nil : shownItem
        })
    }
    
    var body: some View {
        BackgroundContainer {
            if viewModel.cryptos.top50CryptocurrencyDetails.isEmpty {
                ProgressView()
            } else {
                ScrollView {
                    VStack(spacing: 44) {
                        ForEach(viewModel.cryptos.top50CryptocurrencyDetails, id: \.self) { item in
                            CryptoItem(item: item) {
                                shownItem = item
                            }
                        }
                        NavigationLink(destination: CryptoDetailView(item: shownItem),
                                       isActive: shownItemBinding) {EmptyView()}
                    }
                }
                .padding(20)
            }
        }
    }
}
